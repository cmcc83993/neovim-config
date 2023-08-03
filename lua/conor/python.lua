
local python_path = vim.fn.exepath("python3.10")
vim.g.python3_host_prog = python_path

vim.g.pymode_options_colorcolumn = 0

--nnoremap <C-R> :sp <CR> :term python % <CR>
--nnoremap <C-W> :bd!<CR>

vim.keymap.set("n", "<C-R>", "[[:sp <CR> :term python % <CR>]]")
vim.keymap.set("n", "<C-W>", "[[:bd! <CR>]]")

