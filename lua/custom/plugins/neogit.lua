return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    -- Only one of these is needed.
    'nvim-telescope/telescope.nvim', -- optional
  },
  config = true,
  keys = {
    {
      '<leader>g',
      function()
        require('neogit').open { cwd = '%:p:h' }
      end,
      mode = 'n',
      desc = '[g]it',
    },
  },
}
