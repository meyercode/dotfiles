local api = vim.api

function makeScratch()
    api.nvim_command('enew')
    vim.bo[0].buftype='nofile' -- set the current buffer's (buffer 0) buftype to nofile
    vim.bo[0].bufhidden='hide'
    vim.bo[0].swapfile=false
end

function toggleBackground()
    local background = api.nvim_get_option('background') or 'dark'
    api.nvim_set_option('background', background=='dark' and 'light' or 'dark')
end

api.nvim_create_user_command('Scratch', 'makeScratch()', {})
api.nvim_create_user_command('BgToggle', 'toggleBackground()', {})

