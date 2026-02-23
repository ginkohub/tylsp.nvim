-- lua/tylsp/init.lua --

local M = {}
local configs = require('lspconfig.configs')
local lspconfig = require('lspconfig')
local util = require('lspconfig.util')

M.setup = function()
  if not configs.tylsp then
    configs.tylsp = {
      default_config = {
        cmd = { 'ty', 'server' },
        filetypes = { 'python' },
        root_dir = function(_)
          return vim.loop.cwd()
        end,
        settings = {},
      }
    }
    lspconfig.tylsp.setup{}
  end
end

return M
