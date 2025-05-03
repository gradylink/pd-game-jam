import("CoreLibs/graphics")

local gfx <const> = playdate.graphics

PortalScreenOpen = true

local portal = assert(gfx.image.new("levelPortal"))
local arrow = assert(gfx.image.new("selectArrow"))

SelectedPortal = 2

local function drawPortal(i)
	portal:drawScaled(52 * i + 64 * (i - 1), i == SelectedPortal and 54 - 16.5 or 54, 2)
	if i == SelectedPortal then
		arrow:drawScaled(52 * i + 64 * (i - 1) + 32 - 16, 54 - 16.5 + 132 + 4, 2)
	end
end

function DrawPortalScreen()
	drawPortal(1)
	drawPortal(2)
	drawPortal(3)
end
