return {
    {
        "sainnhe/sonokai",
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.sonokai_style = "espresso" -- "atlantis"(dark blue), "andromeda"(blue), "shusia"(black), "maia"(light black), "espresso"(this is true old)
            vim.cmd([[colorscheme sonokai]])
        end,
    },
}
