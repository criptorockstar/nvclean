local M = {
  "nvimdev/lspsaga.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons"
  }
}

M.config = function()
  require('lspsaga').setup({
    move_in_saga = { prev = "<C-k>", next = "<C-j>" },
    lightbulb = {
      enable = false,
    },
    use_saga_diagnostics_sign = true,
    error_sign = " ",
    warn_sign = " ",
    hint_sign = " ",
    info_sign = " ",
    diagnostic_header_icon = " ",
    code_action_icon = " ",
    code_action_prompt = {
      enable = true,
      sign = true,
      sign_priority = 20,
      virtual_text = true,
    },
    finder_definition_icon = "󰡱 ",
    finder_reference_icon = " ",
    definition_preview_icon = " ",
    max_preview_lines = 10,
    symbol_in_winbar = {
      enable = true,
      separator = " ",
      hide_keyword = true,
      show_file = true,
      folder_level = 2,
      respect_root = false,
      color_mode = true,
    },
    ui = {
      -- currently only round theme
      theme = "round",
      -- this option only work in neovim 0.9
      title = false,
      -- border type can be single,double,rounded,solid,shadow.
      border = "rounded",
      winblend = 0,
      expand = "",
      collapse = "",
      preview = " ",
      code_action = "",
      diagnostic = "",
      incoming = " ",
      outgoing = " ",
      colors = {
        --float window normal background color
        normal_bg = "#141423",
        --title background color
        title_bg = "#FF7070",
        red = "#e95678",
        magenta = "#b33076",
        orange = "#FF8700",
        yellow = "#f7bb3b",
        green = "#afd700",
        cyan = "#36d0e0",
        blue = "#61afef",
        purple = "#CBA6F7",
        white = "#d1d4cf",
        black = "#1c1c19",
      },
      kind = {},
    }
  })
end

return M
