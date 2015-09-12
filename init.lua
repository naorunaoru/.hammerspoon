require('bindings')
require('grid')
require('movement')

-- spectacle emulation
-- todo: rewrite with hs.grid
require('sizeup')

-- params
hs.autoLaunch(true)
hs.consoleOnTop(true)
hs.dockIcon(false)
hs.menuIcon(false)

hs.window.animationDuration = 0

-- confg reload

function reload()
	hs.reload()
	hs.notify.new({
      title='Hammerspoon',
      informativeText='Reloaded'
    }):send():release()
end

function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        reload()
    end
end

hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()

hs.hotkey.bind(m2, "R", function()
	reload()
end)
