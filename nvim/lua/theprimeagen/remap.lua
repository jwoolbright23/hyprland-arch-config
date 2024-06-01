vim.g.mapleader = " "

vim.g.python3_host_prog = "/usr/bin/python3"

vim.keymap.set("n", "<leader>pv ", vim.cmd.Ex)

vim.opt.guicursor = "n-v-i-c:ver25-iCursor"

vim.cmd.colorscheme "catppuccin-mocha"

vim.wo.number = true

vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

vim.keymap.set({"i", "s"}, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})
