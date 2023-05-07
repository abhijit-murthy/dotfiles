--
-- arcOS.lua   -- Configuration for arcOS project
--

local M = {}

--[[
-- Setup module. This installs commands
--]]
M.setup = function(opts)
  vim.api.nvim_echo({ {'Loaded arcOS project config' } }, true, {})
  vim.cmd([[
    command! ArcOSMakeKernel lua require('arcOS').make_arcOS("vendor", "kernel")
    command! ArcOSMakeAbl lua require('arcOS').make_arcOS("vendor", "aboot")
  ]])
  vim.api.nvim_create_user_command(
    'ArcOSMakeTarget',
    function(opts)
            --require('arcOS').make_arcOS(opts.args[0], opts.args[1])
            print(string.upper(opts.args))
    end,
    { nargs = '*' }
)

end

--[[
-- Trigger build of arcOS at path based on cwd.
--]]
M.make_arcOS = function(product, target)
    vim.cmd('AsyncRun arcbuild ' .. product .. " " .. target)
end

return M
