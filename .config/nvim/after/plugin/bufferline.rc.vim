nnoremap <silent><leader>l :BufferLineCycleNext<CR>
nnoremap <silent><leader>h :BufferLineCyclePrev<CR>
nnoremap <C-w> :bd<CR>

lua << EOF
local bufferline = require('bufferline')

bufferline.setup {
  options = {
	tab_size = 18,
    diagnostics = "nvim_lsp",
	diagnostics_update_in_insert = true,
	diagnostics_indicator = function(count, level, diagnostics_dict, context)
	  local icon = level:match("error") and " " or " "
	  return " " .. icon .. count
	end,
	separator_style = 'thick',
  }
}
EOF
