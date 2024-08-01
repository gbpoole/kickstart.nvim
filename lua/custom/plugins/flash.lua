return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  opts = {},
  -- stylua: ignore
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Fla[s]h" },
    { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Fla[S]h Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "[R]emote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitte[R] Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
}
