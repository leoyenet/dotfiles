return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  lazy = false,
  dependencies = { 'mason-org/mason.nvim' },
  build = ':TSUpdate',
  config = function()
    local treesitter = require 'nvim-treesitter'
    treesitter.setup {}
    if vim.fn.executable 'tree-sitter' == 1 then
      treesitter.install {
        'bash',
        'c',
        'cpp',
        'diff',
        'go',
        'html',
        'lua',
        'luadoc',
        'markdown',
        'markdown_inline',
        'python',
        'query',
        'vim',
        'vimdoc',
      }
    end

    vim.api.nvim_create_autocmd('FileType', {
      group = vim.api.nvim_create_augroup('custom-treesitter', { clear = true }),
      callback = function(event)
        local lang = vim.treesitter.language.get_lang(vim.bo[event.buf].filetype)
        if not lang or not vim.treesitter.language.add(lang) then
          return
        end
        vim.treesitter.start(event.buf, lang)
        if vim.bo[event.buf].filetype ~= 'ruby' and vim.treesitter.query.get(lang, 'indents') then
          vim.bo[event.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end,
}
