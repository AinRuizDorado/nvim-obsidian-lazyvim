return {
  "skwee357/nvim-prose",

  config = function()
    require("nvim-prose").setup({
      wpm = 170.0,
      filetypes = { "markdown", "asciidoc" },
      placeholders = {
        words = "words",
        minutes = "min",
      },
    })
  end,
}
