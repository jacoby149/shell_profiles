-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.keys.insert_mode["<A-j>"] = false
lvim.keys.insert_mode["<A-k>"] = false
lvim.keys.normal_mode["<A-j>"] = false
lvim.keys.normal_mode["<A-k>"] = false
lvim.keys.visual_block_mode["<A-j>"] = false
lvim.keys.visual_block_mode["<A-k>"] = false
lvim.format_on_save.enabled = true
vim.opt.textwidth = 80 -- wrap lines
vim.opt.autoread = true
vim.opt.clipboard = "unnamedplus"
vim.opt.wrap = true
vim.opt.rnu = true
lvim.keys.normal_mode["W"] = ":w<cr>"
lvim.keys.normal_mode["Q"] = ":q<cr>"
