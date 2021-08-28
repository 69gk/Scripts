local coin = workspace.Lobby.LobbyObby.Token
coin.CanCollide = false
for i = 1,50,1 do
wait()
coin.CFrame = (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
end
coin.CanCollide = true
end)