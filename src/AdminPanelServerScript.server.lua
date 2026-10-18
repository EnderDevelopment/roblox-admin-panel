-- AdminPanelServerScript.server.lua

local AdminPanel = require(script.Parent.AdminPanel)
local AdminPanelGUI = require(script.Parent.AdminPanelGUI)

-- Function to handle player added
local function onPlayerAdded(player)
    -- Create the admin panel GUI for the player
    AdminPanelGUI.create(player)
end

-- Connect the player added event
Game.Players.PlayerAdded:Connect(onPlayerAdded)