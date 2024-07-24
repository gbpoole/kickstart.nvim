return {
  'danymat/neogen',
  keys = {
    {
      '<leader>cd',
      function()
        require('neogen').generate {}
      end,
      desc = 'Neogen: generate [c]ode [d]ocstring',
    },
  },
  opts = {
    enabled = true, --if you want to disable Neogen (even tho Lazy.nvim has a better system)
    input_after_comment = true, -- (default: true) automatic jump (with insert mode) on inserted annotation
    snippet_engine = 'luasnip',
    languages = {
      lua = {
        template = {
          annotation_convention = 'emmylua',
        },
      },
      python = {
        template = {
          annotation_convention = 'numpydoc',
        },
      },
    },
  },
  config = function(opts)
    require('neogen').setup(opts)
  end,
}
