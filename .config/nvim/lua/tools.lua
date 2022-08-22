local api = vim.api

local M = {}

function M.makeScratch()
    api.nvim_command('enew')
    vim.bo[0].buftype='nofile' -- set the current buffer's (buffer 0) buftype to nofile
    vim.bo[0].bufhidden='hide'
    vim.bo[0].swapfile=false
end

function M.toggleBackground()
    local background = api.nvim_get_option('background') or 'dark'
    api.nvim_set_option('background', background=='dark' and 'light' or 'dark')
end

return M

