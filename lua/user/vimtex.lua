local status_ok, vimtex = pcall(require, "vimtex")
if not status_ok then
	return
end

-- Enable filetype plugin and indentation
vim.cmd('filetype plugin indent on')

-- Enable syntax
vim.cmd('syntax enable')

-- Viewer options
vim.g.vimtex_view_method = 'okular'
vim.g.vimtex_view_general_viewer = 'okular'
vim.g.vimtex_view_general_options = '--unique file:@pdf#src:@line@tex'

-- Compiler method
vim.g.vimtex_compiler_method = 'latexrun'
