local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joeengo/exploiting/main/EngoUILIB_V2.lua", true))()

local main = library:CreateMain("Guitoh Lindo dms", "Guitoh", Enum.KeyCode.LeftAlt)

local tab = main:CreateTab("Dupe")
local tab2 = main:CreateTab("Eventos")

tab:CreateLabel("Clica, faz o trade, e da rejoin :)")
tab:CreateButton("Dupe Script", function(value)
    local remote = game:GetService("ReplicatedStorage"):WaitForChild("Remote",100):WaitForChild("SetSettings",100)
    local args = {
        [1] = {
            AutoSell = {
                ShinyMythical = false --[[boolean]],
                Mythical = false --[[boolean]],
                Rare = false --[[boolean]],
                Legendary = false --[[boolean]],
                ShinyRare = false --[[boolean]],
                ShinyEpic = false --[[boolean]],
                Epic = false --[[boolean]],
                ShinyLegendary = false --[[boolean]],
                ShinyCommon = false --[[boolean]],
                Common = false --[[boolean]]
            },
            CriticalHits = true --[[boolean]],
            ChatAnnouncements = {
                ShinyMythical = true --[[boolean]],
                Mythical = true --[[boolean]],
                Rare = false --[[boolean]],
                Legendary = true --[[boolean]],
                ShinyRare = false --[[boolean]],
                ShinyEpic = false --[[boolean]],
                Epic = false --[[boolean]],
                ShinyLegendary = true --[[boolean]],
                ShinyCommon = false --[[boolean]],
                Common = false --[[boolean]]
            },
            Flash = true --[[boolean]],
            LowQuality = true --[[boolean]],
            AllPets = false --[[boolean]],
            Performance = false --[[boolean]],
            AutoLock = {
                ShinyMythical = true --[[boolean]],
                Mythical = true --[[boolean]],
                Rare = false --[[boolean]],
                Legendary = true --[[boolean]],
                ShinyRare = false --[[boolean]],
                ShinyEpic = false --[[boolean]],
                Epic = false --[[boolean]],
                ShinyLegendary = true --[[boolean]],
                ShinyCommon = false --[[boolean]],
                Common = false --[[boolean]]
            },
            AutoSellPassives = {workspace},
            SoundsEnabled = true --[[boolean]],
            AutoClicker = true --[[boolean]],
            AutoSprint = false --[[boolean]],
            OtherFX = false --[[boolean]],
            TradesEnabled = true --[[boolean]],
            MusicEnabled = true --[[boolean]],
            BoostPaused = false --[[boolean]],
            OwnFX = true --[[boolean]],
            MagnetPass = true --[[boolean]]
        }
    }
    remote:FireServer(unpack(args))
    warn("Dupeeeee Readyyyyy!!! Dupeeeee Readyyyyy!!! Dupeeeee Readyyyyy!!!")
    while task.wait(.1) do
        remote:FireServer(unpack(args))
    end

    game.StarterGui:SetCore("SendNotification", {
        Title = "Guitoh Lindo"; 
        Text = "Script de Dupe executado"; 
        Icon = ""; 
        Duration = 2;
        Callback = bindableFunction;})
wait(2.2)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Guitoh Lindo"; 
        Text = "Faz o trade e da rejoin"; 
        Icon = ""; 
        Duration = 3;
        Callback = bindableFunction;})
end);

tab2:CreateLabel("Clica, vai pra DBZ e entra no portal")
tab2:CreateButton("Summer Island", function()
    local jogo = game.workspace
    jogo.Worlds.DBZ.WorldGate.TargetWorld.Value = "Summer"
    game.StarterGui:SetCore("SendNotification", {
        Title = "Guitoh Lindo"; 
        Text = "Portal pra Summer aberto"; 
        Icon = ""; 
        Duration = 3;
        Callback = bindableFunction;})
end)
tab2:CreateButton("Halloween Island", function()
    local jogo = game.workspace
    jogo.Worlds.DBZ.WorldGate.TargetWorld.Value = "Halloween"
    game.StarterGui:SetCore("SendNotification", {
        Title = "Guitoh Lindo"; 
        Text = "Portal pra Halloween aberto"; 
        Icon = ""; 
        Duration = 3;
        Callback = bindableFunction;})
end)
tab2:CreateButton("Voltar ao normal", function()
    local jogo = game.workspace
    jogo.Worlds.DBZ.WorldGate.TargetWorld.Value = "Naruto"
    game.StarterGui:SetCore("SendNotification", {
        Title = "Guitoh Lindo"; 
        Text = "Portal voltou ao normal"; 
        Icon = ""; 
        Duration = 3;
        Callback = bindableFunction;})
end)
