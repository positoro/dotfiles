local options = {
  fileencoding = "utf-8",
  backup = false,
  swapfile = false,
  helplang = "ja",
  cmdheight = 1,
  laststatus = 2,
  showcmd = false,
  hlsearch = true,
  incsearch = true,
  showmatch = true,
  matchtime = 5,
  expandtab = true,
  tabstop = 2,
  shiftwidth = 0,
  softtabstop = 0,
  number = true,
  wrap = false,
  visualbell = true,
  showmatch = true,
  signcolumn = 'yes',
  list = true,
  termguicolors = true,
  pumheight = 20,
  pumblend = 30,
  updatetime= 300,
  complete = "",
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
