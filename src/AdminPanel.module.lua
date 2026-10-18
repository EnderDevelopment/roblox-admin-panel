-- AdminPanel.module.lua

local AdminPanel = {}

-- Configuration
local ADMIN_GROUP_ID = 12345678  -- Replace with your admin group ID

-- Function to check if a player is an admin
function AdminPanel.isAdmin(player)
    for _, groupId in ipairs(player:GetRoleInGroup(ADMIN_GROUP_ID)) do
        if groupId == ADMIN_GROUP_ID then
            return true
        end
    end
    return false
end

-- Function to fly a player
function AdminPanel.fly(player)
    if not AdminPanel.isAdmin(player) then
        return false
    end

    local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.PlatformStand = true
        return true
    end
    return false
end

-- Function to ban a player
function AdminPanel.ban(player, reason)
    if not AdminPanel.isAdmin(player) then
        return false
    end

    -- Implement ban logic here
    -- For example, you can use a data store to keep track of banned players
    print("Player " .. player.Name .. " has been banned. Reason: " .. reason)
    return true
end

-- Function to kick a player
function AdminPanel.kick(player, reason)
    if not AdminPanel.isAdmin(player) then
        return false
    end

    player:Kick("Kicked by admin. Reason: " .. reason)
    return true
end

return AdminPanel