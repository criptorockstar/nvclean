local M = {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = { "nvim-tree/nvim-web-devicons" },
}

M.config = function()
	local bufferline = require("bufferline")
	bufferline.setup({
		options = {
			mode = "buffers", -- set to "tabs" to only show tabpages instead
			style_preset = bufferline.style_preset.default, -- or bufferline.style_preset.minimal,
			themable = true, -- allows highlight groups to be overriden i.e. sets highlights as default
			numbers = "ordinal",
			--close_command = "bdelete! %d",       -- can be a string | function, | false see "Mouse actions"
			--right_mouse_command = "bdelete! %d", -- can be a string | function | false, see "Mouse actions"
			--left_mouse_command = "buffer %d",    -- can be a string | function, | false see "Mouse actions"
			middle_mouse_command = nil, -- can be a string | function, | false see "Mouse actions"
			indicator = {
				icon = "▎", -- this should be omitted if indicator style is not 'icon'
				style = "icon",
			},
			modified_icon = "●",
			close_icon = "",
			left_trunc_marker = "",
			right_trunc_marker = "",
			max_name_length = 18,
			max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
			truncate_names = true, -- whether or not tab names should be truncated
			tab_size = 18,
			diagnostics = "nvim_lsp",
			diagnostics_update_in_insert = false,
			-- The diagnostics indicator can be set to nil to keep the buffer name highlight but delete the highlighting
			-- NOTE: this will be called a lot so don't do any heavy processing here
			offsets = {
				{
					filetype = "neo-tree",
					text_align = "left",
					separator = true,
				},
			},
			show_buffer_icons = true, -- disable filetype icons for buffers
			show_buffer_close_icons = false,
			show_close_icon = false,
			show_tab_indicators = true,
			show_duplicate_prefix = false, -- whether to show duplicate buffer prefix
			persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
			move_wraps_at_ends = false, -- whether or not the move command "wraps" at the first or last position
			-- can also be a table containing 2 custom separators
			-- [focused and unfocused]. eg: { '|', '|' }
			separator_style = "thin",
			always_show_bufferline = false,
			hover = {
				enabled = true,
				delay = 200,
				reveal = { "close" },
			},
		},
	})
end

return M