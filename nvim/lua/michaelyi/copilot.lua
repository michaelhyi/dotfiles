local sysname = vim.loop.os_uname().sysname
if sysname == "Darwin" then
    vim.g.copilot_node_command
    = "/opt/homebrew/Cellar/node@18/18.19.1_1/bin/node"
end
