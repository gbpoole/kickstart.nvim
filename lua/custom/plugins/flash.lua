return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  opts = {},
  -- stylua: ignore
  keys = {
    { "<leader>sj", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash [j]ump" },
    { "<leader>sJ", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter [J]ump" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "[R]emote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitte[R] Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
}
