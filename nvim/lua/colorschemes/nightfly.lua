vim.o.background = "dark"
vim.cmd('colorscheme nightfly')

vim.g.moonflyIgnoreDefaultColors = 1
vim.g.nightflyCursorColor = 1
vim.g.nightflyNormalFloat = 1

  vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
    vim.lsp.handlers.hover, {
      border = 'single'
    }
  )
  vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
    vim.lsp.handlers.signatureHelp, {
      border = 'single'
    }
  )
  local opts = {noremap = true, silent = true}
  vim.api.nvim_buf_set_keymap(0, 'n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next({severity_limit = "Warning", popup_opts = {border = "single"}})<CR>', opts)
  vim.api.nvim_buf_set_keymap(0, 'n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev({severity_limit = "Warning", popup_opts = {border = "single"}})<CR>', opts)

vim.g.nightflyTerminalColors = 0
vim.g.nightflyUnderlineMatchParen = 1
vim.g.nightflyVertSplits = 0
