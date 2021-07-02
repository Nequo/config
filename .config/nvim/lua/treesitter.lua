require 'nvim-treesitter.configs'.setup {
    ensure_installed = 'maintained',
    highlight = {
        enable = true,
    },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.hcl = {
  install_info = {
    url = "~/git/tree-sitter-hcl", -- local path or git repo
    files = {"src/parser.c", "src/scanner.cc"}
  },
  filetype = "hcl", -- if filetype does not agrees with parser name
  used_by = {"tf"} -- additional filetypes that use this parser
}
