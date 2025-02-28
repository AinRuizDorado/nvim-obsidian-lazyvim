return {
  --
  "nvim-lualine/lualine.nvim",
  config = function()
    -- local status = require("nvim-spotify").status
    -- status:start()
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
        },
      },
    })
  end,
}
