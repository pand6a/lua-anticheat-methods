-- 1.
-- this one old but if you don't know its cool to know
-- warning: this will flag in studio and will also flag if a script in your game uses EncodingService

-- detects  -- https://github.com/luau/UniversalSynSaveInstance
if game:FindService("EncodingService") ~= nil then
 -- ussi
	return
end
game.ServiceAdded:Connect(function(serv)
	if serv.Name == "EncodingService" then
  -- ussi
	end
end)
-- Solution to 1: use cloneref() its big 2026

--2.
-- its cool, works on alot of things like most UI libraries
-- I gave claude arceus X init scripts for it to collect some of these Ids (im a lazy bum)
-- RIP Old preloadasync detection
local HACKERIDS = {
	"14926240421", -- Arceus X Neo app logo
	"14915932328", -- Arceus/SPDM logo
	"15102967594", -- Arceus close icon
	"93520763686656", -- Casecade UI Library
	"4155801252", -- Linoria UI Library
	"11389137937" -- Hydroxide UI 
}
local ContentProvider = game:GetService("ContentProvider")

for _, id in ipairs(HACKERIDS) do
	for _, contentId in ipairs({
		"rbxassetid://" .. id,
		"http://www.roblox.com/asset/?id=" .. id,
	}) do
		local ok, status = pcall(function()
			return ContentProvider:GetAssetFetchStatus(contentId)
		end)
		-- print(id, tostring(ok), tostring(status))
		if ok
			and (
				status == Enum.AssetFetchStatus.Success
				or status == Enum.AssetFetchStatus.Loading
			)
		then
			-- An asset you don't like was loaded by a HACKER panic
		end
	end
end
-- Solution to 2: use getcustomasset() i think
