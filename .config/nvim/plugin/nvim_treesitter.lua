require 'nvim-treesitter.configs'.setup {
    ensure_installed = {  "bash", "json", "lua", "typescript", "rust", },

    sync_install = false,

    auto_install = true,

    highlight = {
        enable = true,              -- false will disable the whole extension

        additional_vim_regex_highlighting = false,
    },

    rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = 3000, -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
    }
}

