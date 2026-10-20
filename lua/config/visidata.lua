-- Open tabular data in VisiData instead of reading it into a text buffer.
vim.api.nvim_create_autocmd("BufReadCmd", {
  group = vim.api.nvim_create_augroup("ArrowVisiData", { clear = true }),
  pattern = { "*.arrow", "*.csv" },
  desc = "Open Arrow and CSV files in VisiData",
  callback = function(args)
    if vim.fn.executable("vd") ~= 1 then
      vim.notify("Cannot open data file: vd is not on PATH", vim.log.levels.ERROR)
      return
    end

    local path = vim.api.nvim_buf_get_name(args.buf)
    -- Reuse the intercepted buffer instead of leaving an empty file buffer behind.
    vim.fn.jobstart({ "vd", path }, {
      term = true,
      on_exit = function(_, code)
        -- Keep failures visible; close successful sessions like a normal viewer.
        if code == 0 then
          vim.schedule(function()
            if vim.api.nvim_buf_is_valid(args.buf) then
              vim.api.nvim_buf_delete(args.buf, { force = true })
            end
          end)
        end
      end,
    })
    vim.cmd.startinsert()
  end,
})
