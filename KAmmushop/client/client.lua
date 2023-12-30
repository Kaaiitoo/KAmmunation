ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

local pos = vector3(19.76, -1111.27, 29.8)
Citizen.CreateThread(function()
    local blip = AddBlipForCoord(pos)

	SetBlipSprite (blip, 110)
	SetBlipScale  (blip, 0.7)
	SetBlipColour (blip, 1)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName('Ammunation')
    EndTextCommandSetBlipName(blip)
end)


function AmmunationShop()
    local AmmunationShop = RageUI.CreateMenu("Ammunation", "Menu Intéraction..")
    local ArmesL = RageUI.CreateSubMenu(AmmunationShop, "Ammunation", "Menu Intéraction..")
    local ArmesB = RageUI.CreateSubMenu(AmmunationShop, "Ammunation", "Menu Intéraction..")
    AmmunationShop:SetRectangleBanner(0, 0, 0)
    ArmesL:SetRectangleBanner(0, 0, 0)
    ArmesB:SetRectangleBanner(0, 0, 0)

        RageUI.Visible(AmmunationShop, not RageUI.Visible(AmmunationShop))
            while AmmunationShop do
            Citizen.Wait(0)
            RageUI.IsVisible(AmmunationShop, true, true, true, function()

                ESX.TriggerServerCallback('kaito:checkLicense', function(cb)            
                    if cb then
                        ppa = true 
                        else 
                         ppa = false   
                    end
                  end)

                    RageUI.ButtonWithStyle("Armes Blanches", nil, {}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                    end
                    end, ArmesB)

                        
                if ppa then 

                        RageUI.ButtonWithStyle("Armes Létales", nil, {}, true, function(Hovered, Active, Selected)
                            if (Selected) then
                            end
                            end, ArmesL)
                        else
                            RageUI.ButtonWithStyle("Armes Létales", nil, {RightBadge = RageUI.BadgeStyle.Lock}, false, function(Hovered, Active, Selected)
                                if (Selected) then
                                end
                                end, ArmesL)
                            end
                    end, function()
                    end, 1)

                    RageUI.IsVisible(ArmesL, true, true, true, function()

                        RageUI.ButtonWithStyle("Pistolet", "", {RightLabel = "~g~5000$"},true, function(Hovered, a, Selected)
                            if a then 
                            RenderSprite("RageUI", "pistolet", 0, 360, 430, 290, 100)
                        end
                            if (Selected) then   
                                local item = "weapon_pistol"
                                local label = "Pistolet"
                                local prix = 5000
                                startAnim('mp_common', 'givetake1_a')
                                Citizen.Wait(5000)
                                TriggerServerEvent('acheterarme', item, label, prix)
                        
                            end
                        end)

                        RageUI.ButtonWithStyle("Pistolet de combat", "", {RightLabel = "~g~5000$"},true, function(Hovered, a, Selected)
                            if a then 
                                RenderSprite("RageUI", "pcombat", 130, 420, 165, 290, 100)
                            end
                            if (Selected) then   
                                local item = "weapon_combatpistol"
                                local label = "Pistolet de combat"
                                local prix = 5000
                                startAnim('mp_common', 'givetake1_a')
                                Citizen.Wait(5000)
                                TriggerServerEvent('acheterarme', item, label, prix)
                        
                            end
                        end)
    
                        RageUI.ButtonWithStyle("Calibre 50", "", {RightLabel = "~g~5000$"},true, function(Hovered, a, Selected)
                            if a then 
                                RenderSprite("RageUI", "calibre50", 0, 360, 430, 290, 100)
                            end
                            if (Selected) then   
                                local item = "weapon_pistol50"
                                local label = "Calibre 50"
                                local prix = 5000
                                startAnim('mp_common', 'givetake1_a')
                                Citizen.Wait(5000)
                                TriggerServerEvent('acheterarme', item, label, prix)
                        
                            end
                        end)

                        RageUI.ButtonWithStyle("Pétoire", "", {RightLabel = "~g~5000$"},true, function(Hovered, a, Selected)
                            if a then 
                                RenderSprite("RageUI", "petoire", 0, 360, 430, 290, 100)
                            end
                            if (Selected) then   
                                local item = "weapon_snspistol"
                                local label = "Pétoire"
                                local prix = 5000
                                startAnim('mp_common', 'givetake1_a')
                                Citizen.Wait(5000)
                                TriggerServerEvent('acheterarme', item, label, prix)
                        
                            end
                        end)

                        RageUI.ButtonWithStyle("Pistolet Lourd", "", {RightLabel = "~g~5000$"},true, function(Hovered, a, Selected)
                            if a then 
                                RenderSprite("RageUI", "plourd", 0, 372, 430, 290, 100)
                            end
                            if (Selected) then   
                                local item = "weapon_heavypistol"
                                local label = "Pétoire"
                                local prix = 5000
                                startAnim('mp_common', 'givetake1_a')
                                Citizen.Wait(5000)
                                TriggerServerEvent('acheterarme', item, label, prix)
                        
                            end
                        end)

                        RageUI.ButtonWithStyle("Pistolet Vintage", "", {RightLabel = "~g~5000$"},true, function(Hovered, a, Selected)
                            if a then 
                                RenderSprite("RageUI", "vintage", 0, 372, 430, 290, 100)
                            end
                            if (Selected) then   
                                local item = "weapon_vintagepistol"
                                local label = "Pistolet Vintage"
                                local prix = 5000
                                startAnim('mp_common', 'givetake1_a')
                                Citizen.Wait(5000)
                                TriggerServerEvent('acheterarme', item, label, prix)
                        
                            end
                        end)

            end, function()
            end, 1)

            RageUI.IsVisible(ArmesB, true, true, true, function()

                RageUI.ButtonWithStyle("Lampe torche", nil, {RightLabel = "~g~5000$"},true, function(Hovered, a, Selected)
                    if a then 
                        RenderSprite("RageUI", "lampe", 0, 485, 430, 290, 100)
                    end
                    if (Selected) then   
                        local item = "weapon_flashlight"
                        local label = "Lampe Torche"
                        local prix = 5000
                        startAnim('mp_common', 'givetake1_a')
                        Citizen.Wait(5000)
                        TriggerServerEvent('acheterarme', item, label, prix)
                        ClearPedTasksImmediately(GetPlayerPed(-1))
                        RageUI.CloseAll()
                
                    end
                end)

                RageUI.ButtonWithStyle("Dague", nil, {RightLabel = "~g~5000$"},true, function(Hovered, a, Selected)
                    if a then 
                        RenderSprite("RageUI", "dague", 0, 500, 430, 290, 100)
                    end
                    if (Selected) then   
                        local item = "weapon_dagger"
                        local label = "Dague"
                        local prix = 5000
                        startAnim('mp_common', 'givetake1_a')
                        Citizen.Wait(5000)
                        TriggerServerEvent('acheterarme', item, label, prix)
                        ClearPedTasksImmediately(GetPlayerPed(-1))
                        RageUI.CloseAll()
                
                    end
                end)

                RageUI.ButtonWithStyle("Bat de Baseball", nil, {RightLabel = "~g~5000$"},true, function(Hovered, a, Selected)
                    if a then 
                        RenderSprite("RageUI", "bat", 0, 485, 430, 290, 100)
                    end
                    if (Selected) then   
                        local item = "weapon_bat"
                        local label = "Bat de Baseball"
                        local prix = 5000
                        startAnim('mp_common', 'givetake1_a')
                        Citizen.Wait(5000)
                        TriggerServerEvent('acheterarme', item, label, prix)
                        ClearPedTasksImmediately(GetPlayerPed(-1))
                        RageUI.CloseAll()
                
                    end
                end)
                
                RageUI.ButtonWithStyle("Bouteille", nil, {RightLabel = "~g~5000$"},true, function(Hovered, a, Selected)
                    if a then 
                        RenderSprite("RageUI", "bouteille", 0, 580, 430, 100, 100)
                    end
                    if (Selected) then   
                        local item = "weapon_bottle"
                        local label = "Bouteille"
                        local prix = 5000
                        startAnim('mp_common', 'givetake1_a')
                        Citizen.Wait(5000)
                        TriggerServerEvent('acheterarme', item, label, prix)
                        ClearPedTasksImmediately(GetPlayerPed(-1))
                        RageUI.CloseAll()
                
                    end
                end)

                RageUI.ButtonWithStyle("Pied de biche", nil, {RightLabel = "~g~5000$"},true, function(Hovered, a, Selected)
                    if a then 
                        RenderSprite("RageUI", "pied_de_biche", 0, 485, 430, 290, 100)
                    end
                    if (Selected) then   
                        local item = "weapon_crowbar"
                        local label = "Pied de biche"
                        local prix = 5000
                        startAnim('mp_common', 'givetake1_a')
                        Citizen.Wait(5000)
                        TriggerServerEvent('acheterarme', item, label, prix)
                        ClearPedTasksImmediately(GetPlayerPed(-1))
                        RageUI.CloseAll()
                
                    end

             end)
             RageUI.ButtonWithStyle("Club de Golf", nil, {RightLabel = "~g~5000$"},true, function(Hovered, a, Selected)
                if a then 
                    RenderSprite("RageUI", "golf", 0, 485, 430, 290, 100)
                end
                    if (Selected) then   
                        local item = "weapon_golfclub"
                        local label = "Club de Golf"
                        local prix = 5000
                        startAnim('mp_common', 'givetake1_a')
                        Citizen.Wait(5000)
                        TriggerServerEvent('acheterarme', item, label, prix)
                        ClearPedTasksImmediately(GetPlayerPed(-1))
                        RageUI.CloseAll()
                
                    end
                end)

                RageUI.ButtonWithStyle("Marteau", nil, {RightLabel = "~g~5000$"},true, function(Hovered, a, Selected)
                    if a then 
                        RenderSprite("RageUI", "marteau", 0, 550, 430, 150, 100)
                    end
                    if (Selected) then   
                        local item = "weapon_hammer"
                        local label = "Marteau"
                        local prix = 5000
                        startAnim('mp_common', 'givetake1_a')
                        Citizen.Wait(5000)
                        TriggerServerEvent('acheterarme', item, label, prix)
                        ClearPedTasksImmediately(GetPlayerPed(-1))
                        RageUI.CloseAll()
                
                    end
                end)

                RageUI.ButtonWithStyle("Hachette", nil, {RightLabel = "~g~5000$"},true, function(Hovered, a, Selected)
                    if a then 
                        RenderSprite("RageUI", "hachette", 0, 550, 430, 150, 100)
                    end
                    if (Selected) then   
                        local item = "weapon_hatchet"
                        local label = "Hachette"
                        local prix = 5000
                        startAnim('mp_common', 'givetake1_a')
                        Citizen.Wait(5000)
                        TriggerServerEvent('acheterarme', item, label, prix)
                        ClearPedTasksImmediately(GetPlayerPed(-1))
                        RageUI.CloseAll()
                
                    end
                end)
                
                RageUI.ButtonWithStyle("Poing Américain", nil, {RightLabel = "~g~5000$"},true, function(Hovered, a, Selected)
                    if a then 
                        RenderSprite("RageUI", "poingamericain", 0, 550, 430, 150, 100)
                    end
                    if (Selected) then   
                        local item = "weapon_knuckle"
                        local label = "Poing Américain"
                        local prix = 5000
                        startAnim('mp_common', 'givetake1_a')
                        Citizen.Wait(5000)
                        TriggerServerEvent('acheterarme', item, label, prix)
                        ClearPedTasksImmediately(GetPlayerPed(-1))
                        RageUI.CloseAll()
                
                    end
                end)

                RageUI.ButtonWithStyle("Couteau", nil, {RightLabel = "~g~5000$"},true, function(Hovered, a, Selected)
                    if a then 
                        RenderSprite("RageUI", "couteau", 0, 485, 430, 290, 100)
                    end
                    if (Selected) then   
                        local item = "weapon_knife"
                        local label = "Couteau"
                        local prix = 5000
                        startAnim('mp_common', 'givetake1_a')
                        Citizen.Wait(5000)
                        TriggerServerEvent('acheterarme', item, label, prix)
                        ClearPedTasksImmediately(GetPlayerPed(-1))
                        RageUI.CloseAll()
                
                    end
                end)

                RageUI.ButtonWithStyle("Machette", nil, {RightLabel = "~g~5000$"},true, function(Hovered, a, Selected)
                    if a then 
                        RenderSprite("RageUI", "machette", 0, 485, 430, 290, 100)
                    end
                    if (Selected) then   
                        local item = "weapon_machete"
                        local label = "Machette"
                        local prix = 5000
                        startAnim('mp_common', 'givetake1_a')
                        Citizen.Wait(5000)
                        TriggerServerEvent('acheterarme', item, label, prix)
                        ClearPedTasksImmediately(GetPlayerPed(-1))
                        RageUI.CloseAll()
                
                    end
                end)


                RageUI.ButtonWithStyle("Couteau Papillon", nil, {RightLabel = "~g~5000$"},true, function(Hovered, a, Selected)
                    if a then 
                        RenderSprite("RageUI", "papillon", 0, 485, 430, 290, 100)
                    end
                    if (Selected) then   
                        local item = "weapon_switchblade"
                        local label = "Couteau Papillon"
                        local prix = 5000
                        startAnim('mp_common', 'givetake1_a')
                        Citizen.Wait(5000)
                        TriggerServerEvent('acheterarme', item, label, prix)
                        ClearPedTasksImmediately(GetPlayerPed(-1))
                        RageUI.CloseAll()
                
                    end
                end)

                RageUI.ButtonWithStyle("Clé à molette", nil, {RightLabel = "~g~5000$"},true, function(Hovered, a, Selected)
                    if a then 
                        RenderSprite("RageUI", "molette", 0, 485, 430, 290, 100)
                    end
                    if (Selected) then   
                        local item = "weapon_wrench"
                        local label = "Clé à molette"
                        local prix = 5000
                        startAnim('mp_common', 'givetake1_a')
                        Citizen.Wait(5000)
                        TriggerServerEvent('acheterarme', item, label, prix)
                        ClearPedTasksImmediately(GetPlayerPed(-1))
                        RageUI.CloseAll()
                
                    end
                end)

                RageUI.ButtonWithStyle("Hache de combat", nil, {RightLabel = "~g~5000$"},true, function(Hovered, a, Selected)
                    if a then 
                        RenderSprite("RageUI", "hachecombat", 0, 570, 430, 150, 100)
                    end
                    if (Selected) then   
                        local item = "weapon_battleaxe"
                        local label = "Hache de combat"
                        local prix = 5000
                        startAnim('mp_common', 'givetake1_a')
                        Citizen.Wait(5000)
                        TriggerServerEvent('acheterarme', item, label, prix)
                        ClearPedTasksImmediately(GetPlayerPed(-1))
                        RageUI.CloseAll()
                
                    end
                end)

                RageUI.ButtonWithStyle("Queue de billard", nil, {RightLabel = "~g~5000$"},true, function(Hovered, a, Selected)
                    if a then 
                        RenderSprite("RageUI", "queuebillard", 0, 485, 430, 290, 100)
                    end
                    if (Selected) then   
                        local item = "weapon_poolcue"
                        local label = "Queue de billard"
                        local prix = 5000
                        startAnim('mp_common', 'givetake1_a')
                        Citizen.Wait(5000)
                        TriggerServerEvent('acheterarme', item, label, prix)
                        ClearPedTasksImmediately(GetPlayerPed(-1))
                        RageUI.CloseAll()
                
                    end
                end)

                RageUI.ButtonWithStyle("Hache de Pierre", nil, {RightLabel = "~g~5000$"},true, function(Hovered, a, Selected)
                    if a then 
                        RenderSprite("RageUI", "hachepierre", 0, 570, 430, 150, 100)
                    end
                    if (Selected) then   
                        local item = "weapon_stone_hatchet"
                        local label = "Hache de Pierre"
                        local prix = 5000
                        startAnim('mp_common', 'givetake1_a')
                        Citizen.Wait(5000)
                        TriggerServerEvent('acheterarme', item, label, prix)
                        ClearPedTasksImmediately(GetPlayerPed(-1))
                        RageUI.CloseAll()
                
                    end
                end)

            end, function()
            end)


            if not RageUI.Visible(AmmunationShop) and not RageUI.Visible(ArmesL) and not RageUI.Visible(ArmesB) then
            AmmunationShop = RMenu:DeleteType("AmmunationShop", true)
        end
    end
end

----- OUVERTURE DU MENU 

Citizen.CreateThread(function()
    while true do
        local Timer = 500
        for k,v in pairs(Config.pos) do 
        local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v)
        if distance <= 1.0 and Config.genre then
            Timer = 0
            end
            if distance <= 1.0 then
                FreezeEntityPosition(PlayerPedId(), false)
                Timer = 0   
                    RageUI.Text({  message = "Appuyez sur [~b~E~w~] pour commander une arme", time_display = 1 })
                        if IsControlJustPressed(1,51) then
                            FreezeEntityPosition(PlayerPedId(), true)
                            AmmunationShop()    
                        end
                end
            end 
        Citizen.Wait(Timer)
    end
end)

------------------- PED ----------------------

local npc2 = {
	{hash="a_m_y_beachvesp_01", x = 21.47, y = -1105.03, z = 29.70, a=151.27}, 
}

Citizen.CreateThread(function()
	for _, item2 in pairs(npc2) do
		local hash = GetHashKey(item2.hash)
		while not HasModelLoaded(hash) do
		RequestModel(hash)
		Wait(20)
		end
		ped2 = CreatePed("PED_TYPE_CIVFEMALE", item2.hash, item2.x, item2.y, item2.z-0.92, item2.a, false, true)
		SetBlockingOfNonTemporaryEvents(ped2, true)
		FreezeEntityPosition(ped2, true)
		SetEntityInvincible(ped2, true)
	end
end)

function startAnim(lib, anim)
    ESX.Streaming.RequestAnimDict(lib, function()
        TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, -8.0, -1, 0, 0.0, false, false, false)
    end)
end