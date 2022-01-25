" ===
" === nvim-treesitter 
" ===
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"c", "cpp", "python", "dart", "go", "bash", "lua"},
  highlight = {
    enable = true,
  },
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	}
}
EOF
