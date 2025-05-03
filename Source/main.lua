import("CoreLibs/graphics")
import("portalSelection")

local gfx <const> = playdate.graphics

gfx.setFont(gfx.font.new("Roobert-24-Medium"))

DrawPortalScreen()

function playdate.update() end

function playdate.rightButtonDown()
	if PortalScreenOpen and SelectedPortal < 3 then
		SelectedPortal += 1
		gfx.clear()
		DrawPortalScreen()
	end
end

function playdate.leftButtonDown()
	if PortalScreenOpen and SelectedPortal > 1 then
		SelectedPortal -= 1
		gfx.clear()
		DrawPortalScreen()
	end
end
