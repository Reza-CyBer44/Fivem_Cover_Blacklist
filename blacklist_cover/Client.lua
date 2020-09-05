Citizen.CreateThread(function()
    while true do
         local disablecover = false
		 local cords = GetEntityCoords(PlayerPedId(),true)

          for _,v in pairs(Zones) do
			local distance = GetDistanceBetweenCoords(cords.x,cords.y,cords.z,v.x,v.y,v.z,v.UseZ)
			
			if distance < v.distance then
				disablecover = true
			end
			
          end
		  
		  
		 SetPlayerCanUseCover(PlayerId(), not disablecover)
		  
		  
        Citizen.Wait(500)
    end
end)