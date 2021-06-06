local lspconfig = require'lspconfig'

-- nvim-lsp
-- Use an on_attach function to only map the following keys 
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
end


local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}


lspconfig.rust_analyzer.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        ["rust-analyzer"] = {
            assist = {
                importMergeBehavior = "last",
                importPrefix = "by_self",
            },
            cargo = {
                loadOutDirsFromCheck = true
            },
            procMacro = {
                enable = true
            },
        }
    }
})

lspconfig.gopls.setup {
    cmd = {"gopls", "serve"},
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
}

lspconfig.pyright.setup{}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = false,
    signs = true,
    underline = true,
    update_in_insert = false,
  }
)

local sign_define = vim.fn.sign_define

-- Define the diagnostic signs
sign_define("LspDiagnosticsSignError", {
    text = " ",
    texthl = "LspDiagnosticsDefaultError"
})
sign_define("LspDiagnosticsSignWarning", {
    text = " ",
    texthl = "LspDiagnosticsDefaultWarning"
})
sign_define("LspDiagnosticsSignInformation", {
    text = " ",
    texthl = "LspDiagnosticsDefaultInformation"
})
sign_define("LspDiagnosticsSignHint", {
    text = " ",
    texthl = "LspDiagnosticsDefaultHint"
})

-- LSP Icons
vim.lsp.protocol.CompletionItemKind = {
    " [text]",
    " [method]",
    "λ [function]",
    "  [constructor]",
                                        
    "ﰠ [field]",
    " [variable]",
    " [class]",
    " [interface]",
                                        
    "M [module]",
    " [property]",
    " [unit]",
    " [value]",
    " [enum]",
                                        
    " [key]",
    "﬌ [snippet]",
    " [color]",
    " [file]",
    " [reference]",
                                        
    " [folder]",
    " [enum member]",
    " [constant]",
    "  [struct]",
                                        
    " [event]",
    " [operator]",
    "卑 [type]"
}


--lsp-trouble
require("trouble").setup {}

-- nvim-lightbulb
vim.fn.sign_define("LightBulbSign", { text = "", texthl = "LspDiagnosticsSignWarning" })
vim.cmd ( [[ autocmd CursorHold * lua require("nvim-lightbulb").update_lightbulb { sign_priority = 10 } ]])
