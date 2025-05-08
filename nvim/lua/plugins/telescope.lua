return {
    'nvim-telescope/telescope.nvim', 
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
        { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Find Git Files" },
        {
            "<leader>fs", 
            function()
                require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") });

            end, 
            desc = "Find In Files" },
    }
}

