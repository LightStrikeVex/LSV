local Players = game:GetService("Players")

local function highlightPlayer(player)
    local highlight = Instance.new("PointLight") -- Cambié a PointLight para resaltar mejor
    highlight.Parent = player.Character
    highlight.Color = Color3.fromRGB(255, 0, 0)
    highlight.Range = 10 -- Ajusté el rango del resaltado
end

-- Conectamos una función para resaltar a los jugadores existentes
for _, player in ipairs(Players:GetPlayers()) do
    highlightPlayer(player)
end

-- Conectamos la función para resaltar a los jugadores nuevos
Players.PlayerAdded:Connect(function(player)
    highlightPlayer(player)
end)
