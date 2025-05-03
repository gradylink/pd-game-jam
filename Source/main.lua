import("CoreLibs/graphics")

local gfx <const> = playdate.graphics

gfx.setFont(gfx.font.new("Roobert-24-Medium"))

gfx.drawTextAligned("Hello, World!", 200, 200, kTextAlignment.center)

function playdate.update() end
