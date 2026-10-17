return {
  {
    'folke/noice.nvim',
    enabled = false,
    event = 'VeryLazy',
    opts = {
      cmdline = { view = 'cmdline' },
      presets = {
        bottom_search = true,
        long_message_to_split = true,
      },
      routes = {
        { filter = { event = 'msg_show', kind = 'search_count' }, opts = { skip = true } },
      },
      lsp = {
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
        },
      },
    },
    dependencies = { 'MunifTanjim/nui.nvim', 'rcarriga/nvim-notify' },
  },
}
