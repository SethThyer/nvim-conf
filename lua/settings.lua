local options = {
  clipboard      = "unnamed,unnamedplus",   --- Copy-paste between vim and everything else
  completeopt    = "menu,menuone,noselect", --- Add support for autocomplete menu
  cmdheight      = 1,                       --- Give more space for displaying messages
  cursorline     = true,                    --- Highlight of current line
  expandtab      = true,                    --- Use spaces instead of tabs
  ignorecase     = true,                    --- Needed for smartcase
  lazyredraw     = true,                    --- Makes macros faster & prevent errors in complicated mappings
  mouse          = "a",                     --- Enable mouse
  number         = true,                    --- Shows current line number
  relativenumber = true,                    --- Enables relative number
  scrolloff      = 8,                       --- Always keep space when scrolling to bottom/top edge
  shiftwidth     = 2,                       --- Change a number of space characeters inseted for indentation
  signcolumn     = "no",                    --- Add extra sign column next to line number
  smartcase      = true,                    --- Uses case in search
  smartindent    = true,                    --- Makes indenting smart
  smarttab       = true,                    --- Makes tabbing smarter will realize you have 2 vs 4
  softtabstop    = 2,                       --- Insert 2 spaces for a tab
  splitright     = true,                    --- Vertical splits will automatically be to the right
  swapfile       = false,                   --- Swap not needed
  tabstop        = 2,                       --- Insert 2 spaces for a tab
  termguicolors  = true,                    --- Correct terminal colors
  timeoutlen     = 300,                     --- Faster completion
  undofile       = true,                    --- Sets undo to file
  updatetime     = 100,                     --- Faster completion
  viminfo        = "'1000",                 --- Increase the size of file history
  wildignore     = "*node_modules/**",      --- Don't search inside Node.js modules; works for gutentag
  wrap           = true,                    --- Display long lines as just one line
  title          = true,                    --- Set window title to working environment
  linebreak      = true,                    --- Makes wrapped text more readable
  syntax         = "on",                    --- Color compatability

  autoindent     = true,                    --- Good auto indent
  backspace      = "indent,eol,start",      --- Making sure backspace works
  conceallevel   = 0,                       --- Show `` in markdown files
  encoding       = "utf-8",                 --- The encoding displayed
  fileencoding   = "utf-8",                 --- The encoding written to file
  incsearch      = true,                    --- Start searching before pressing enter
  showmode       = true,                    --- Show things like -- INSERT --
}

local globals = {
  mapleader                   = ' ',        --- Map leader key to SPC
  speeddating_no_mappings     = 1           --- Disable default mappings for speeddating
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

for k, v in pairs(globals) do
  vim.g[k] = v
end



-- Color Scheme
require("onedark").setup {
  style = 'cool',
  transparent = true,
  term_colors = true,
  diagnostics = {
    darker = true,      -- darker colors for diagnostic
    undercurl = true,   -- use undercurl instead of underline for diagnostics
    background = true   -- use background color for virtual text
  },
}
require("onedark").load()

-- Misc Plugin setups
require'colorizer'.setup()
