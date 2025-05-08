return {
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/nvim-cmp",
            "L3MON4D3/LuaSnip"
        },
        config = function()
            local lsp_zero = require("lsp-zero")
            lsp_zero.extend_lspconfig()

            -- LSP 启动时的回调
            lsp_zero.on_attach(function(client, bufnr)
                lsp_zero.default_keymaps({ buffer = bufnr })
            end)

            -- mason.nvim 配置
            require("mason").setup({})
            require("mason-lspconfig").setup({
                ensure_installed = { "clangd" }, -- 确保安装 clangd
                handlers = {
                    function(server_name)
                        require("lspconfig")[server_name].setup({})
                    end,
                },
            })

            -- nvim-cmp 自动补全
            local cmp = require("cmp")
            local cmp_lsp = require("cmp_nvim_lsp")

            cmp.setup({
                mapping = cmp.mapping.preset.insert({
                    ["<Tab>"] = cmp.mapping.select_next_item(),
                    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                }),
                sources = {
                    { name = "nvim_lsp" },  -- LSP 补全
                    { name = "buffer" },    -- 缓冲区补全
                    { name = "path" },      -- 文件路径补全
                },
            })

            -- 让 LSP 补全生效
            local capabilities = cmp_lsp.default_capabilities()
            require("lspconfig").clangd.setup({
                capabilities = capabilities
            })
        end,
    }
}
