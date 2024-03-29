-- https://github.com/williamboman/mason.nvim

require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = {
        "lua_ls",
        "golangci_lint_ls",
        "gopls",
        "pyright",
        "solidity",
        "ltex",
        "bashls",
        "bufls"
    }
}

-- After setting up mason-lspconfig you may set up servers via lspconfig
-- Setup language servers.
-- See: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.workspace = {
    {
        didChangeWatchedFiles = {
            dynamicRegistration = true
        }
    }
}

-- Golang
lspconfig.golangci_lint_ls.setup {
    init_options = {
        command = { "golangci-lint", "run",
            "--out-format", "json",
            "--enable", "asasalint", "errorlint", "exhaustive", "exhaustruct", "exportloopref", "predeclared",
        }
    }
}

lspconfig.gopls.setup {
    capabilities = capabilities,
    settings = {
        gopls = {
            env = {
                GOFLAGS = "-tags=db_testing,local_testing"
            },
        }
    }
}

-- Protobuf
lspconfig.bufls.setup {
    capabilities = capabilities,
}

-- Python
lspconfig.pyright.setup {
    capabilities = capabilities,
}

-- Latex / Markdown
lspconfig.ltex.setup {
    capabilities = capabilities,
    settings = {
        ltex = {
            language = "zh-CN",
        },
    },
}

-- Bash
lspconfig.bashls.setup {}

-- Lua
lspconfig.lua_ls.setup {
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { 'vim', 'use' },
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
}

-- Rust
lspconfig.rust_analyzer.setup {
    capabilities = capabilities,
}

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[g', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']g', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        -- print("language server online :)")
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        -- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)
        -- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set('n', '<space>a', vim.lsp.buf.code_action, opts)
        -- vim.keymap.set('n', 'gr', function()
        --     vim.lsp.buf.references({ includeDeclaration = false })
        -- end, opts)
        vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
        end, opts)
    end,
})
