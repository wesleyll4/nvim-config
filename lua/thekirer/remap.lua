local nnoremap = require("thekirer.keymap").nnoremap
nnoremap("<leader>e", "<cmd>NvimTreeToggle<CR>")

--Telescope
nnoremap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
nnoremap("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
nnoremap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")

-- Better window movement
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

-- Resize with arrows
nnoremap("<C-Up>", ":resize -2<CR>")
nnoremap("<C-Down>", ":resize +2<CR>")
nnoremap("<C-Left>", ":vertical resize -2<CR>")
nnoremap("<C-Right>", ":vertical resize +2<CR>")

-- Move current line / block with Alt-j/k a la vscode.
nnoremap("<A-j>", ":m .+1<CR>==")
nnoremap("<A-k>", ":m .-2<CR>==")

-- QuickFix
nnoremap("]q", ":cnext<CR>")
nnoremap("[q", ":cprev<CR>")
nnoremap("<C-q>", ":call QuickFixToggle()<CR>")

local inoremap = require("thekirer.keymap").inoremap
-- Move current line / block with Alt-j/k ala vscode.
inoremap("<A-j>", "<Esc>:m .+1<CR>==gi")
-- Move current line / block with Alt-j/k ala vscode.
inoremap("<A-k>", "<Esc>:m .-2<CR>==gi")
-- navigation
inoremap("<A-Up>", "<C-\\><C-N><C-w>k")
inoremap("<A-Down>", "<C-\\><C-N><C-w>j")
inoremap("<A-Left>", "<C-\\><C-N><C-w>h")
inoremap("<A-Right>", "<C-\\><C-N><C-w>l")

local termo_mode = require("thekirer.keymap").term_mode
-- Terminal window navigation
termo_mode("<C-h>", "<C-\\><C-N><C-w>h")
termo_mode("<C-j>", "<C-\\><C-N><C-w>j")
termo_mode("<C-k>", "<C-\\><C-N><C-w>k")
termo_mode("<C-l>", "<C-\\><C-N><C-w>l")

local vnoremap = require("thekirer.keymap").vnoremap
-- Better indenting
vnoremap("<", "<gv")
vnoremap(">", ">gv")

-- ["p"] = '"0p',
-- ["P"] = '"0P',

local xnoremap = require("thekirer.keymap").xnoremap
-- Move selected line / block of text in visual mode
xnoremap("K", ":move '<-2<CR>gv-gv")
xnoremap("J", ":move '>+1<CR>gv-gv")

-- Move current line / block with Alt-j/k ala vscode.
xnoremap("<A-j>", ":m '>+1<CR>gv-gv")
xnoremap("<A-k>", ":m '<-2<CR>gv-gv")
