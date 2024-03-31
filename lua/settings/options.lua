-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
-- Current line number color
vim.api.nvim_command("augroup CursorLineHighlight")
vim.api.nvim_command("autocmd!")
vim.api.nvim_command("autocmd BufWinEnter,BufReadPost * highlight CursorLineNr guifg=yellow")
vim.api.nvim_command("augroup END")
-- Diagnostic settings
vim.diagnostic.config({
	virtual_text = {
		source = true,
		format = nil,
	},
	underline = true,
	signs = true,
	update_in_insert = false,
	severity_sort = true,
})

-- Diagnostic signs
vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = " ", texthl = "DiagnosticSignHint" })
