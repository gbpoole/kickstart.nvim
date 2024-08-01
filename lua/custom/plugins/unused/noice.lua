return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    'MunifTanjim/nui.nvim',
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    'rcarriga/nvim-notify',
  },
  -- stylua: ignore
  keys = {
    { "<leader>pl", function() require("noice").cmd("last") end, desc = "Noice Last Message" },
    { "<leader>ph", function() require("noice").cmd("history") end, desc = "Noice History" },
    { "<leader>pa", function() require("noice").cmd("all") end, desc = "Noice All" },
    { "<leader>pd", function() require("noice").cmd("dismiss") end, desc = "Dismiss All" },
    { "<c-n>", function() if not require("noice.lsp").scroll(4) then return "<c-f>" end end, silent = true, expr = true, desc = "Scroll forward", mode = {"i", "n", "s"} },
    { "<c-p>", function() if not require("noice.lsp").scroll(-4) then return "<c-b>" end end, silent = true, expr = true, desc = "Scroll backward", mode = {"i", "n", "s"}},
  },
  opts = {
    -- cmdline = {
    --   enabled = false, -- enables the Noice cmdline UI
    -- },
    lsp = {
      progress = {
        enabled = true,
      },
      override = {
        ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
        ['vim.lsp.util.stylize_markdown'] = true,
        ['cmp.entry.get_documentation'] = true,
      },
    },
    routes = {
      {
        filter = {
          event = 'msg_show',
          kind = '',
        },
        opts = { skip = true },
      },
    },
    presets = {
      bottom_search = true, -- use a classic bottom cmdline for search
      command_palette = true, -- position the cmdline and popupmenu together
      long_message_to_split = true, -- long messages will be sent to a split
      inc_rename = false, -- enables an input dialog for inc-rename.nvim
      lsp_doc_border = true, -- add a border to hover docs and signature help
    },
  },
  config = function(opts)
    require('noice').setup(opts)
  end,
}
