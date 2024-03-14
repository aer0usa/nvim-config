-- If you don't care about running it "protected":
-- vim.cmd "colorscheme habamax"

local colorscheme = "habamax"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
