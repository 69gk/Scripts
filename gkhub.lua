local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joeengo/exploiting/main/EngoUILIB_V2.lua", true))()
local main = library:CreateMain("Race Clicker", "GK HUB", Enum.KeyCode.LeftAlt)

local AFK = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
AFK:CaptureController()
AFK:ClickButton2(Vector2.new())
end)

local autofarm = main:CreateTab("Auto Farm")
local eggs = main:CreateTab("Eggs")
local misc = main:CreateTab("Outros")

-- Variaveis

local Players = game:GetService("Players")
local lp = Players.LocalPlayer

-- Tables

local Maps = {"Home", "Space", "Ocean", "Candy", "Hell", "Pirate"}
local Eggs = {"5 Wins", "25 Wins", "175 Wins", "1k Wins", "10k Wins", "75k Wins", "250k Wins", "1M Wins", "2.5M Wins", "5M Wins"}
local Codes = {"UPDATECLICKCODE", "hallowx3", "Accelhidden", "opx3code", "500KLikes", "Almost100MVisits", "1MGroupMembers", "Thankyou50M", "NewUpdate", "LetsGo5KLikes", "ThanksFor5MillionsVisits"}


local delay
autofarm:CreateToggle("Auto Farm Wins", function(bool)
    getgenv().AutoFinish = bool
    
    task.spawn(function()
        while task.wait() do
            if AutoFinish then
                pcall(function()
                    if lp.PlayerGui.TimerUI.RaceTimer.Visible then
                        local char = lp.Character
                        local hum = char.Humanoid
                        local hrp = char.HumanoidRootPart
                        
                        hrp.CFrame = hrp.CFrame + Vector3.new(50000, 0, 0)
                        task.wait(delay)
                    end
                end)
            end
        end
    end)
end)

local delay
autofarm:CreateToggle("Auto Click", function(bool)
    getgenv().AutoClick = bool
    
    task.spawn(function()
        while task.wait() do
            if AutoClick then
                if lp.PlayerGui.ClicksUI.ClickHelper.Visible == true then
                    game:GetService("ReplicatedStorage").Packages.Knit.Services.ClickService.RF.Click:InvokeServer()
                end
            end
        end
    end)
end)

local delay
autofarm:CreateToggle("Auto Rebirth", function(bool)
    getgenv().AutoRebirth = bool
    
    task.spawn(function()
        while task.wait() do
            if AutoRebirth then
                game:GetService("ReplicatedStorage").Packages.Knit.Services.RebirthService.RF.Rebirth:InvokeServer()
                task.wait(5)
            end
        end
    end)
end)

local choosed_egg
eggs:CreateDropdown("Selecione o Egg",{unpack(Eggs)},true,function(egg)
    if egg == Eggs[1] then
        choosed_egg = "Starter01"
     elseif egg == Eggs[2] then
         choosed_egg = "Starter02"
     elseif egg == Eggs[3] then
         choosed_egg = "Starter03"
     elseif egg == Eggs[4] then
         choosed_egg = "Starter04"
     elseif egg == Eggs[5] then
         choosed_egg = "Pro01"
     elseif egg == Eggs[6] then
         choosed_egg = "Pro02"
     elseif egg == Eggs[7] then
         choosed_egg = "Pro03"
     elseif egg == Eggs[8] then
         choosed_egg = "Space01"
     elseif egg == Eggs[9] then
         choosed_egg = "Ocean01"
     end
end)

local delay
eggs:CreateToggle("Auto Hatch", function(bool)
    getgenv().AutoHatch = bool
    
    task.spawn(function()
        while task.wait() do
            if AutoHatch then
                if choosed_egg then
                    local args = {[1] = choosed_egg,[2] = "1",[3] = {}}
                    game:GetService("ReplicatedStorage").EggService.RF.Open:InvokeServer(unpack(args))
                else
                    warn("Please, choose your egg !")
                end
            end
        end
    end)
end)

local delay
eggs:CreateToggle("Auto Craft Pet", function(bool)
    getgenv().AutoCraft = bool
    
    task.spawn(function()
        while task.wait(3) do
            if AutoCraft then
                game:GetService("ReplicatedStorage").Packages.Knit.Services.PetsService.RF.CraftAll:InvokeServer()
            end
        end
    end)
end)

local delay
eggs:CreateToggle("Auto Equip Best", function(bool)
    getgenv().AutoEquipBest = bool
    
    task.spawn(function()
        while task.wait(3) do
            if AutoEquipBest then
                game:GetService("ReplicatedStorage").Packages.Knit.Services.PetsService.RF.EquipBest:InvokeServer()
            end
        end
    end)
end)

misc:CreateDropdown("Map Teleport :",{unpack(Maps)},true,function(map)
    if map == Maps[1] then
        local args = {[1] = "Home"}
        game:GetService("ReplicatedStorage").Packages.Knit.Services.WorldService.RF.Travel:InvokeServer(unpack(args))    
    elseif map == Maps[2] then
        local args = {[1] = "Space"}
        game:GetService("ReplicatedStorage").Packages.Knit.Services.WorldService.RF.Travel:InvokeServer(unpack(args))
    elseif map == Maps[3] then
        local args = {[1] = "Ocean"}
        game:GetService("ReplicatedStorage").Packages.Knit.Services.WorldService.RF.Travel:InvokeServer(unpack(args))
    elseif map == Maps[4] then
        local args = {[1] = "Candy"}
        game:GetService("ReplicatedStorage").Packages.Knit.Services.WorldService.RF.Travel:InvokeServer(unpack(args))
    elseif map == Maps[5] then
        local args = {[1] = "Hell"}
        game:GetService("ReplicatedStorage").Packages.Knit.Services.WorldService.RF.Travel:InvokeServer(unpack(args))
    elseif map == Maps[6] then
        local args = {[1] = "Pirate"}
        game:GetService("ReplicatedStorage").Packages.Knit.Services.WorldService.RF.Travel:InvokeServer(unpack(args))

    end  
end)

misc:CreateButton("Redeem Codes",function()
    for i,v in (Codes) do
        local args = {[1] = v}
        game:GetService("ReplicatedStorage").Packages.Knit.Services.CodesService.RF.Redeem:InvokeServer(unpack(args))
    end
end)

misc:CreateButton("Destroy GUI",function()
    main:DestroyGui()
end)
