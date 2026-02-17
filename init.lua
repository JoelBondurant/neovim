vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "autocmds"

vim.schedule(function()
  require "mappings"
end)

-- respect tabs
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 0

-- show whitespace
vim.opt.list = true
vim.opt.listchars = {
  tab = '▸ ',
  eol = '¬',
  trail = '~',
  extends = '>',
  precedes = '<',
  space = '␣',
}

-- color theme
vim.opt.termguicolors = true

local function set_hl(name, fg, bg, style)
    local opts = {
        fg = fg,
        bg = bg,
        bold = style == 'bold' or nil,
        italic = style == 'italic' or nil,
        underline = style == 'underline' or nil,
    }
    vim.api.nvim_set_hl(0, name, opts)
end

set_hl("Normal",      "#CECEEE", "#000000", nil)
set_hl("EndOfBuffer", "#000000", "#000000", nil)
set_hl("NonText",     "#444444", "#000000", nil)
set_hl("CursorLine",  nil,       "#1A1A1A", nil)
set_hl("Visual",      nil,       "#404040", nil)
set_hl("LineNr",      "#AAAAAA", "#000000", nil)
set_hl("CursorLineNr","#FFFFFF", "#1A1A1A", "bold")
set_hl("Comment",     "#6A6A6A", nil, "italic")
set_hl("Constant",    "#FFCC00", nil, nil)
set_hl("String",      "#FFCC00", nil, nil)
set_hl("Number",      "#FF8000", nil, nil)
set_hl("Keyword",     "#00FFFF", nil, nil)
set_hl("Statement",   "#00FFFF", nil, "bold")
set_hl("Type",        "#00FF80", nil, nil)
set_hl("Identifier",  "#00FF80", nil, nil)
set_hl("Function",    "#FFFF00", nil, nil)
set_hl("StatusLine",  "#EEEEEE", "#404040", nil)
set_hl("StatusLineNC","#AAAAAA", "#202020", nil)
set_hl("Error",       "#FF0000", nil, "bold")
set_hl("Warning",     "#FF8000", nil, "bold")
set_hl("MatchParen",  "#FF00FF", nil, "bold")


-- code folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.api.nvim_create_autocmd("LspAttach", {
  desc = "Set LSP folding if client supports it",
  callback = function(ctx)
    local client = vim.lsp.get_client_by_id(ctx.data.client_id)
    if client and client:supports_method("textDocument/foldingRange") then
      vim.opt_local.foldexpr = "v:lua.vim.lsp.foldexpr()"
    end
  end,
})

-- for clankers
vim.o.autoread = true
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
    pattern = "*",
    command = "if mode() != 'c' | checktime | endif",
})
