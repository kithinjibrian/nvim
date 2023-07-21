local options = {
	backup = false,
	completeopt = {'menuone','noselect'},
	fileencoding = 'utf-8',
	conceallevel = 0,
	cmdheight = 2,
	hidden = true,
	pumheight = 10,
	smartcase = true,
	splitbelow = true,
	splitright = true,
	swapfile = false,
	clipboard = 'unnamedplus',
	scrolloff = 8,
	sidescrolloff = 8,
	writebackup = false,
  showtabline = 4,
  tabstop = 2,
  shiftwidth = 2,
  cursorline = true,
  number = true,
	mouse = 'a',
	termguicolors = true,
	smartindent = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
