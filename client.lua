playerServerId = GetPlayerServerId(PlayerId())
ids = {};

RegisterNetEvent('pma-voice:removePlayerFromRadio')
AddEventHandler('pma-voice:removePlayerFromRadio', function(plySource)
  if(plySource == playerServerId) then
	SendNUIMessage({
		type = 'leaveRadio',
		plyId = plySource
	});
  else
	  SendNUIMessage({
		type = 'removeFromRadio',
		plyId = plySource
	  });
  end
  
end)

RegisterNetEvent('pma-voice:addPlayerToRadio')
AddEventHandler('pma-voice:addPlayerToRadio', function(plySource)
  TriggerServerEvent('pma_radiolist:addPlayerToRadio',plySource);
end)

RegisterNetEvent('pma-voice:setTalkingOnRadio')
AddEventHandler('pma-voice:setTalkingOnRadio', function(plySource, talking)
	SendNUIMessage({
		type = 'setTalkingOnRadio',
		plyId = plySource,
		talking = talking
	});
end)

RegisterNetEvent('pma-voice:syncRadioData')
AddEventHandler('pma-voice:syncRadioData', function(radioData)
	TriggerServerEvent('pma_radiolist:joinedRadio', radioData);
end)

RegisterNetEvent('pma_radiolist:ui:joinedRadio');
AddEventHandler('pma_radiolist:ui:joinedRadio', function(radioData)
	SendNUIMessage({
		type = 'joinRadio',
		radioData = radioData
	});
end)

RegisterNetEvent('pma_radiolist:ui:addPlayerToRadio');
AddEventHandler('pma_radiolist:ui:addPlayerToRadio', function(playerData)
	SendNUIMessage({
		type = 'addToRadio',
		playerData = playerData
	});
end)

--RegisterNetEvent('cad:characterSelected');
--AddEventHandler("cad:characterSelected", function(data)
--	if(data.identifier ~= nil) then 
--		TriggerServerEvent('pma_radiolist:identifier:new', data.identifier);
--	else
--		TriggerServerEvent('pma_radiolist:identifier:new',nil);
--	end
--end)