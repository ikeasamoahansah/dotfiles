local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")
require("autoclose").setup()

local non_c_line_comments_by_filetype = {
    lua = "--",
    python = "#",
    js = "//",
}
local default_line_comment = "#"

local function comment_out(opts)
    local line_comment = non_c_line_comments_by_filetype[vim.bo.filetype] or default_line_comment
    local start = math.min(opts.line1, opts.line2)
    local finish = math.max(opts.line1, opts.line2)

    vim.api.nvim_command(start .. "," .. finish .. "s:^:" .. line_comment .. ":")
    vim.api.nvim_command("noh")
end


vim.api.nvim_create_user_command("CommentOut", comment_out, {})
vim.keymap.set("v", "<leader>cr", ":CommentOut<CR>") -- visual mode keymap
vim.keymap.set("n", "<leader>cr", ":CommentOut<CR>") -- normal mode keymap



