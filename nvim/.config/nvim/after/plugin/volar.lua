-- Volar can serve as a language server for both Vue and TypeScript via [Take Over Mode](https://github.com/johnsoncodehk/volar/discussions/471).
-- To enable Take Over Mode, override the default filetypes in `setup{}` as follows:

require'lspconfig'.volar.setup{
  filetypes = {'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
}
