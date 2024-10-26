return {
    "eldritch-theme/eldritch.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        transparent = false,
        on_colors = function(colors)
            colors.error = "#37f499"
        end,

        on_highlights = function(highlights)
            highlights.CursorLine = { bg = "#f265b5" }
        end,
    },
    config = function(_, opts)
        local eldritch = require("eldritch")
        eldritch.setup(opts)
    end,
}
