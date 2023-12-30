ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


function sendToDiscord(color, name, message, footer)
    local embed = {
          {
              ["color"] = color,
              ["title"] = "**".. name .."**",
              ["description"] = message,
              ["footer"] = {
                  ["text"] = footer,
              },
          }
      }
    PerformHttpRequest(Config.AmmunationWebhook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
  end

RegisterNetEvent('acheterarme')
AddEventHandler('acheterarme', function(item, label, prix)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()
    local name = GetPlayerName(source)

	if playerMoney >= prix then
		xPlayer.addWeapon(item, 1)
		xPlayer.removeMoney(prix)
		TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre ~o~"..label.." ~s~!")
		sendToDiscord(255, "Ammunation", name .. " a acheté : " ..label.. '.', "Shiganshina")
	else
		TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez !")
	end
end)


function CheckLicense(source, type, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
	local identifier = xPlayer.identifier

	MySQL.Async.fetchAll('SELECT COUNT(*) as count FROM user_licenses WHERE type = @type AND owner = @owner', {
		['@type']  = type,
		['@owner'] = identifier
	}, function(result)
		if tonumber(result[1].count) > 0 then
			cb(true)
		else
			cb(false)
		end

	end)
end

ESX.RegisterServerCallback('kaito:checkLicense', function(source, cb, type)
    CheckLicense(source, 'weapon', cb)
end)
