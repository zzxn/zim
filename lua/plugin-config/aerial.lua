require('aerial').setup({
    -- optionally use on_attach to set keymaps when aerial has attached to a buffer
    on_attach = function(bufnr)
        -- Jump forwards/backwards with '{' and '}'
        vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', {buffer = bufnr})
        vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', {buffer = bufnr})
    end,
    open_automatic = false -- it's anoying in multi-screens
    -- open_automatic = function(bufnr)
    --     -- Enforce a minimum line count
    --     return vim.api.nvim_buf_line_count(bufnr) > 10
    --         -- Enforce a minimum symbol count
    --         and aerial.num_symbols(bufnr) > 4
    --         -- A useful way to keep aerial closed when closed manually
    --         and not aerial.was_closed()
    -- end
})
-- You probably also want to set a keymap to toggle aerial
-- vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle!<CR>')
