local identifiers = {};

--RegisterNetEvent('pma_radiolist:identifier:new');
--AddEventHandler("pma_radiolist:identifier:new", function(identifier)
	--identifiers[source]=identifier;
--end)

--AddEventHandler('playerDropped', function (reason)
--	identifiers[source]=nil;
--end)

RegisterNetEvent('pma_radiolist:joinedRadio');
AddEventHandler('pma_radiolist:joinedRadio', function(radioData)

	local returnData={};
	
	for k,v in pairs(radioData) do
		--if(v ~= nil) then table.insert(returnData,{plyId=k,identifier=identifiers[k],talking=v}); end
		if(v ~= nil) then table.insert(returnData,{plyId=k,talking=v}); end
	end
	
	TriggerClientEvent('pma_radiolist:ui:joinedRadio',source,returnData);

end)

RegisterNetEvent('pma_radiolist:addPlayerToRadio');
AddEventHandler('pma_radiolist:addPlayerToRadio', function(plyId)
	--local returnData = {plyId=plyId,identifier=identifiers[plyId],talking=false};
	local returnData = {plyId=plyId,talking=false};
	TriggerClientEvent('pma_radiolist:ui:addPlayerToRadio',source,returnData);
end);