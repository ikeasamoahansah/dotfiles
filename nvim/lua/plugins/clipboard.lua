return {
    'ikeasamoahansah/clipboard.nvim',
    dependencies = {
        "nvim-telescope/telescope.nvim"
    },
    opts = {
        text_hist_num = 20,
        command_yank_history = "Yank"
    },
    config = function(opts)
        local clipboard = require('clipboard')
        clipboard.setup(opts)
        vim.keymap.set('n', '<C-y>', ':Yank<CR>', {noremap = true})
    end
}
