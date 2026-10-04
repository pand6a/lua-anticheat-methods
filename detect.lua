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
-- Solution to this: use cloneref()
