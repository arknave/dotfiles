local grid = require "hs.grid"
local hotkey = require "hs.hotkey"
local caffeinate = require "hs.caffeinate"

mash = {"cmd", "alt", "ctrl"}

local function launchChrome()
  application.launchOrFocus("Google Chrome")
end

local function launchTerminal()
  application.launchOrFocus("Terminal")
end

hotkey.bind(mash, 'C', launchChrome)
hotkey.bind(mash, 'T', launchTerminal)

hotkey.bind(mash, 'M', grid.maximizeWindow)
hotkey.bind(mash, 'P', grid.pushWindowNextScreen)
hotkey.bind(mash, 'N', grid.pushWindowPrevScreen)
hotkey.bind(mash, 'S', caffeinate.systemSleep)

-- Auto-reload config
function reload_config(files)
  hs.reload()
end

hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reload_config):start()
hs.alert.show("Config loaded")
