ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('duty:police')
AddEventHandler('duty:police', function(job)

        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
	
	if xPlayer.job.name == "police" or "offpolice" then
		xPlayer.setJob(xPlayer.job.name=="police" and "offpolice" or "police", xPlayer.job.grade)
	end
	
end)

RegisterServerEvent('duty:ambulance')
AddEventHandler('duty:ambulance', function(job)

		local _source = source
		local xPlayer = ESX.GetPlayerFromId(_source)

	if xPlayer.job.name == "ambulance" or "offambulance" then
		xPlayer.setJob(xPlayer.job.name=="ambulance" and "offambulance" or "ambulance", xPlayer.job.grade)
	end
	
end)

RegisterServerEvent('duty:mechanic')
AddEventHandler('duty:mechanic', function(job)
	
		local _source = source
		local xPlayer = ESX.GetPlayerFromId(_source)
	
	if xPlayer.job.name == "mechanic" or "offmechanic" then
		xPlayer.setJob(xPlayer.job.name=="mechanic" and "offmechanic" or "mechanic", xPlayer.job.grade)
	end
	
end)

--notification
function sendNotification(xSource, message, messageType, messageTimeout)
    TriggerClientEvent("pNotify:SendNotification", xSource, {
        text = message,
        type = messageType,
        queue = "qalle",
        timeout = messageTimeout,
        layout = "bottomCenter"
    })
end