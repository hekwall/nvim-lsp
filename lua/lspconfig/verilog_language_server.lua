local configs = require 'lspconfig/configs'
local util = require 'lspconfig/util'

configs.verilog_language_server = {
  default_config = {
    cmd = {"vls"};
    filetypes = {"verilog"};
    root_dir = util.path.dirname;
    -- root_dir = function(fname)
    --   local filename = util.path.is_absolute(fname) and fname
    --     or util.path.join(vim.loop.cwd(), fname)
    --   return util.root_pattern("component.xml") or util.path.dirname(filename)
    -- end;
  };
  docs = {
    description = [[
verilog_language_server
]];
    default_config = {
      root_dir = "vim's cwd";
    };
  };
}
-- vim:et ts=2 sw=2
