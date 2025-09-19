local RivalsPlaceIds = {17625359962}
local function RivalsLoad()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/86295d9fdddf4ebfea06d83a70f79332.lua"))()
    end)
    if not success then
        warn("Failed to load the Rivals script. Error:", err)
    end
end

local FF2PlaceIds = {8204899140, 8206123457}
local function FF2Load()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/211b4b1877e20d6b04152fee50c56302.lua"))()
    end)
    if not success then
        warn("Failed to load the FF2 script. Error:", err)
    end
end

if table.find(RivalsPlaceIds, game.PlaceId) then
    RivalsLoad()
elseif table.find(FF2PlaceIds, game.PlaceId) then
    FF2Load()
else
    warn("Unsupported game. PlaceId: "..game.PlaceId)
end
