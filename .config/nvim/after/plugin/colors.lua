function SetColorscheme(color)
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)

    vim.cmd.background = "dark"
    vim.cmd.termguicolor = true
end

SetColorscheme()
