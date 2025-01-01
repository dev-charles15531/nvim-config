return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
      return {
        options = {
          icons_enabled = true,
          always_divide_middle = true,
          always_show_tabline = true,
          theme = 'nightfly',  -- Change the theme
          section_separators = { left = '', right = '' },
          component_separators = { left = '', right = '' },
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diff', 'diagnostics'},
          lualine_c = {'filename'},
          lualine_x = {
            {
              function()
                return ' 💎 🚀' -- some custom thingy
              end,
            },
            'encoding', 'fileformat', 'filetype'
          },
          lualine_y = {'progress', 'location'},
          lualine_z = { {
            -- Custom date-time component
            function()
              local date = os.date('%b%d,%Y')  -- Format eg: Dec 30 2024
              local time = os.date('%H:%M')  -- Format eg: Dec 30 2024
              return '  ' .. date .. '  ' .. time
            end,
            color = { gui = 'italic' },
          } },
        },
      }
    end,
  },
}
