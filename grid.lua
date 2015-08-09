hs.grid.setGrid('5x4', '2560x1440')
hs.grid.setGrid('6x2', '1280x800')

hs.grid.ui.textColor = {1, 1, 1, 0.5}
hs.grid.ui.cellColor = {0, 0, 0, 0.25}
hs.grid.ui.cellStrokeColor = {0, 0, 0, 0.25}
hs.grid.ui.selectedColor = {1, 1, 1, 0.1}
hs.grid.ui.highlightColor = {0.8, 0.8, 0, 0.0}
hs.grid.ui.highlightStrokeColor = {0, 0, 0, 0}

hs.grid.ui.textSize = 100
hs.grid.ui.cellStrokeWidth = 0
hs.grid.ui.highlightStrokeWidth = 0

hs.grid.ui.fontName = 'Helvetica Neue'

hs.grid.ui.showExtraKeys = false

hs.grid.setMargins({0,0})

hs.hotkey.bind(m1, "G", function()
  hs.grid.toggleShow()
end)

hs.hotkey.bind(m1, "H", function()
	hs.hints.windowHints()
end)

