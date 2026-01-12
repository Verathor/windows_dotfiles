local opt = vim.opt

-- UI
opt.number = true
opt.relativenumber = true
opt.signcolumn = 'yes'          -- Always show sign column
opt.cursorline = true           -- Highlight current line
opt.termguicolors = true
opt.showmode = true             -- Don't show mode (INSERT, etc)

-- Editing
opt.mouse = 'a'
opt.clipboard = 'unnamedplus' -- Use system clipboard
opt.undofile = true           -- Persistent undo
opt.breakindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

-- Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = false
opt.smartindent = true

-- Performance
opt.updatetime = 250          -- Faster completion
opt.timeoutlen = 300          -- Faster key sequence completion

-- Windows specific
if vim.fn.has('win32') == 1 then
    opt.shell = 'pwsh'        -- Use PowerShell (or 'cmd')
    opt.shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command'

-- Wrap line when using navigation
opt.whichwrap:append("<>[]hl")
end
