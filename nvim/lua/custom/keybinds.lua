local km = vim.keymap

km.set('n', '<leader>l', '<cmd>source %<CR>', { desc = 'Source current file' })
km.set('n', '<leader>x', ':.lua<CR>', { desc = 'Execute Lua line', silent = true })
km.set('x', '<leader>x', ':lua<CR>', { desc = 'Execute Lua selection', silent = true })
km.set('n', '<leader>w', '<cmd>write<CR>', { desc = 'Save file', silent = true })
km.set('n', '<leader>rc', '<cmd>edit $MYVIMRC<CR>', { desc = 'Open Neovim config', silent = true })
km.set('n', '<leader>rp', '<cmd>RunPython<CR>', { desc = 'Run Python file', silent = true })
km.set('n', '<leader>rr', '<cmd>LspRestart<CR>', { desc = 'LSP: Restart clients' })

local function move_line(offset)
  local line = vim.fn.line '.'
  if (offset == 1 and line == vim.fn.line '$') or (offset == -2 and line == 1) then
    return
  end
  vim.cmd.move { tostring(line + offset) }
  vim.cmd.normal { '==', bang = true }
end

km.set('n', '<A-j>', function()
  move_line(1)
end, { desc = 'Move line down' })
km.set('n', '<A-k>', function()
  move_line(-2)
end, { desc = 'Move line up' })
km.set('x', '<A-j>', ":move '>+1<CR>gv=gv", { desc = 'Move selection down', silent = true })
km.set('x', '<A-k>', ":move '<-2<CR>gv=gv", { desc = 'Move selection up', silent = true })

vim.api.nvim_create_user_command('RunPython', function()
  local path = vim.api.nvim_buf_get_name(0)
  if vim.bo.filetype ~= 'python' or path == '' or vim.bo.buftype ~= '' then
    vim.notify('Open a named Python file before running it.', vim.log.levels.WARN)
    return
  end
  local python = vim.fn.exepath 'python3'
  if python == '' then
    vim.notify('python3 is not available on PATH.', vim.log.levels.ERROR)
    return
  end
  vim.cmd.update()
  vim.cmd.new { mods = { split = 'botright' } }
  vim.fn.jobstart({ python, path }, { term = true })
  vim.cmd.startinsert()
end, { desc = 'Save and run the current Python file in a terminal' })
