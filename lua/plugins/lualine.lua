return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      sections = {
        lualine_x = {
          function()
            local ok, pomo = pcall(require, "pomo")
            if not ok then
              return ""
            end

            local timer = pomo.get_first_to_finish()
            if timer == nil then
              return ""
            end

            return "󰄉 " .. tostring(timer)
          end,
          "encoding",
          "fileformat",
          "filetype",
          function()
            local ok, prose = pcall(require, "nvim-prose")
            if not ok or not prose.is_available() then
              return ""
            end
            return "📝 " .. prose.word_count()
          end,
          function()
            local ok, prose = pcall(require, "nvim-prose")
            if not ok or not prose.is_available() then
              return ""
            end
            return prose.reading_time()
          end,
        },
      },
    })
  end,
}
