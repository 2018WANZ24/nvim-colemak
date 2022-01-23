" ===
" === nvim-treesitter 
" ===
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"c", "cpp", "python", "dart", "go", "bash"},
  highlight = {
    enable = true,
  },
}
EOF
