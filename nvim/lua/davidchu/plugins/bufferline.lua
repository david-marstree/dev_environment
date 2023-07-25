-- import bufferline plugin safely
local setup, bufferline= pcall(require, "bufferline")
if not setup then
	return
end


bufferline.setup({
  options = { -- custom options for bufferline
    view = "multiwindow",
    buffer_close_icon = "",
    left_trunc_marker = "",
    right_trunc_marker = "",
    mode = "tabs",
    diagnostic = "coc",
    numbers = "ordinal",
    modified_icon = "",
    close_icon = "",
    show_buffer_close_icons = true,
    mapping = false
  }
})

