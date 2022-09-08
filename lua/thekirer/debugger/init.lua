require("thekirer.debugger.node");
require("thekirer.debugger.csharp");

local dap = require("dap")
local dapui = require("dapui")
-- local daptext = require("nvim-dap-virtual-text")

local remap = require("thekirer.keymap")
local nnoremap = remap.nnoremap

-- daptext.setup()
dapui.setup({
  layouts = {
    {
      elements = {
        "console",
      },
      size = 7,
      position = "bottom",
    },
    {
      elements = {
        -- Elements can be strings or table with id and size keys.
        { id = "scopes", size = 0.25 },
        "watches",
      },
      size = 40,
      position = "left",
    }
  },
})

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open(1)
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end


nnoremap("<Home>", function()
  dapui.toggle(1)
end)
nnoremap("<End>", function()
  dapui.toggle(2)
end)

nnoremap("<leader><leader>", function()
  dap.close()
end)

nnoremap("<F5>", function()
    dap.continue()
end)
nnoremap("<F10>", function()
    dap.step_over()
end)
nnoremap("<F11>", function()
    dap.step_into()
end)
nnoremap("<S-F11>", function()
    dap.step_out()
end)
nnoremap("<F9>", function()
  dap.toggle_breakpoint()
end)
nnoremap("<Leader>B", function()
  dap.set_breakpoint(vim.fn.input('Breakpoint condition: '))
end)
nnoremap("<C-F10>", function()
  dap.run_to_cursor()
end)
