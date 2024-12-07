local status_ok, gitsigns = pcall(require, "gitsigns")
if not status_ok then
  return
end

gitsigns.setup {
    -- signs = {
    --     add = { hl = "GitSignsAdd", text = "│", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
    --     change = { hl = "GitSignsChange", text = "│", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
    --     delete = { hl = "GitSignsDelete", text = "_", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
    --     topdelete = { hl = "GitSignsDelete", text = "‾", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
    --     changedelete = { hl = "GitSignsChange", text = "~", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
    -- },
    signs = {
        add = { text = "│" },
        change = { text = "│" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
    },
    signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
    numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
    linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
    word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
    watch_gitdir = {
        interval = 1000,
        follow_files = true,
    },
    attach_to_untracked = true,
    current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
        delay = 1000,
        ignore_whitespace = false,
    },
    sign_priority = 6,
    update_debounce = 100,
    status_formatter = nil, -- Use default
    max_file_length = 40000,
    preview_config = {
        -- Options passed to nvim_open_win
        border = "single",
        style = "minimal",
        relative = "cursor",
        row = 0,
        col = 1,
    },
}

vim.cmd [[
    highlight GitSignsAdd guifg=#00ff00 ctermfg=2
    highlight GitSignsChange guifg=#0000ff ctermfg=3
    highlight GitSignsDelete guifg=#ff0000 ctermfg=1
    highlight GitSignsAddNr guifg=#00ff00 ctermfg=2
    highlight GitSignsChangeNr guifg=#0000ff ctermfg=3
    highlight GitSignsDeleteNr guifg=#ff0000 ctermfg=1
    highlight GitSignsAddLn guibg=#334422
    highlight GitSignsChangeLn guibg=#223344
    highlight GitSignsDeleteLn guibg=#442233
    highlight GitSignsTopdelete guifg=#ff0000 ctermfg=1
    highlight GitSignsTopdeleteLn guibg=#442233
    highlight GitSignsChangedelete guifg=#ff0000 ctermfg=1
    highlight GitSignsChangedeleteLn guibg=#442233
]]
