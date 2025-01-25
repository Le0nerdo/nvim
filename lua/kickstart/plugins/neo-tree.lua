-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    sources = {
      'filesystem',
      'buffers',
      'git_status',
      'document_symbols',
    },
    close_if_last_window = true,
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      follow_current_file = {
        enabled = true,
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
    diagnostics = {
      symbols = {
        hint = 'H',
        info = 'I',
        warn = '!',
        error = 'X',
      },
      highlights = {
        hint = 'DiagnosticSignHint',
        info = 'DiagnosticSignInfo',
        warn = 'DiagnosticSignWarn',
        error = 'DiagnosticSignError',
      },
    },
  },
}
