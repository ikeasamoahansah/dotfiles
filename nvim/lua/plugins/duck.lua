return {
    'tamton-aquib/duck.nvim',
    config = function()
        vim.keymap.set('n', '<leader>zz', function() require("duck").hatch() end, {})
        vim.keymap.set('n', '<leader>zk', function() require("duck").cook() end, {})
        vim.keymap.set('n', '<leader>za', function() require("duck").cook_all() end, {})
    end
}
