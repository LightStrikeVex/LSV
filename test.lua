[[
local players = game:GetService("Players")

local funtion highlightPlayer(player
    local highlight = Instance.new("Highlight")
    highlight.Parent = player.Character
    highlight.Fillcolor = Color3.fromRGB(255, 0, 0)
    highlight.OutlineColor = Color3.fromRGB(0, 0, 255)
end

for _, player in ipairs(Player:GetPlayers()) do
    highlightPlayer(player)
end
]]

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

local function highlightPlayer(player)
    local highlight = Instance.new("Highlight")
    highlight.Parent = player.Character
    highlight.FillColor = Color3.fromRGB(255, 0, 0)
    highlight.OutlineColor = Color3.fromRGB(0, 0, 255)
end

-- Función para verificar si un objeto es un jugador
local function isPlayer(object)
    return object:IsA("Player")
end

-- Recorre todos los humanoides en el Workspace
for _, descendant in pairs(Workspace:WaitForChild("Entities"):GetDescendants()) do
    if descendant:IsA("Humanoid") and not isPlayer(descendant.Parent) then
        highlightPlayer(descendant.Parent)
    end
end
