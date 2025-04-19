local wezterm = require 'wezterm'
local act = wezterm.action

return {
  -- cmd+backspace erase word
  { key = 'Backspace', mods = 'CMD',       action = act.SendKey { key = 'w', mods = 'CTRL' } },
  -- cmd+shift+backspace erase line
  { key = 'Backspace', mods = 'CMD|SHIFT', action = act.SendKey { key = 'u', mods = 'CTRL' } },
  {
    key = 'LeftArrow',
    mods = 'OPT',
    action = act.SendKey { key = 'b', mods = 'ALT' },
  },
  {
    key = 'RightArrow',
    mods = 'OPT',
    action = act.SendKey { key = 'f', mods = 'ALT' },
  },
  {
    key = '%',
    mods = 'SHIFT|ALT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = '*',
    mods = 'SHIFT|ALT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'w',
    mods = 'CMD',
    action = wezterm.action.CloseCurrentPane { confirm = false },
  },

}
