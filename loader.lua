local isTradeWorld = false
pcall(function()
    local TW_Data = require(game:GetService("ReplicatedStorage"):WaitForChild("Data"):WaitForChild("TradeWorldData"))
    isTradeWorld = TW_Data and game.PlaceId == TW_Data.PlaceId
end)
if not isTradeWorld then
    pcall(function()
        isTradeWorld = workspace:FindFirstChild("TradeWorld") ~= nil
    end)
end

if isTradeWorld then
    task.spawn(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Punpunzero02/hydrahub/refs/heads/main/Market.lua"))()
    end)
    task.spawn(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/wardz25/sphinxhub/refs/heads/main/main.lua"))()
    end)
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/wardz25/sphinxhub/refs/heads/main/main.lua"))()
end
