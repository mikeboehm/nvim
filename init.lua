require("config.lazy")
vim.lsp.enable({'luals', 'typescript'})
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})

-- `K` for code definitions
vim.lsp.buf.hover()

-- Disable autoselect in autocomplete
vim.cmd('set completeopt+=noselect')

-- Border for hover boxes
vim.o.winborder = 'rounded'
