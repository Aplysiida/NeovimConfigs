return {
  "scottmckendry/cyberdream.nvim",
  commit = "5b42c2e6764312c166c25bc79dfcbaadac2d5425",
  opts = {
      -- Enable transparent background
      transparent = false,
      theme = {
        variant= "light",
      },
  },
  config = function(_,opts)
    require("cyberdream").setup(opts)
  end,
}
