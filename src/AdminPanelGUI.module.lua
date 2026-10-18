-- AdminPanelGUI.module.lua

local AdminPanelGUI = {}

-- Function to create the admin panel GUI
function AdminPanelGUI.create(player)
    if not AdminPanel.isAdmin(player) then
        return
    end

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "AdminPanelGUI"
    screenGui.Parent = player.PlayerGui

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 300, 0, 200)
    frame.Position = UDim2.new(0.5, -150, 0.5, -100)
    frame.AnchorPoint = Vector2.new(0.5, 0.5)
    frame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
    frame.BorderSizePixel = 0
    frame.Parent = screenGui

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 30)
    title.Position = UDim2.new(0, 0, 0, 0)
    title.Text = "Admin Panel"
    title.TextColor3 = Color3.new(1, 1, 1)
    title.BackgroundTransparency = 1
    title.TextScaled = true
    title.Parent = frame

    local flyButton = Instance.new("TextButton")
    flyButton.Size = UDim2.new(0.8, 0, 0, 30)
    flyButton.Position = UDim2.new(0.1, 0, 0, 40)
    flyButton.Text = "Fly"
    flyButton.TextColor3 = Color3.new(1, 1, 1)
    flyButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    flyButton.Parent = frame

    flyButton.MouseButton1Click:Connect(function()
        AdminPanel.fly(player)
    end)

    local banButton = Instance.new("TextButton")
    banButton.Size = UDim2.new(0.8, 0, 0, 30)
    banButton.Position = UDim2.new(0.1, 0, 0, 80)
    banButton.Text = "Ban"
    banButton.TextColor3 = Color3.new(1, 1, 1)
    banButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    banButton.Parent = frame

    banButton.MouseButton1Click:Connect(function()
        local targetPlayer = getTargetPlayer()  -- Implement this function to get the target player
        if targetPlayer then
            AdminPanel.ban(targetPlayer, "Banned by admin")
        end
    end)

    local kickButton = Instance.new("TextButton")
    kickButton.Size = UDim2.new(0.8, 0, 0, 30)
    kickButton.Position = UDim2.new(0.1, 0, 0, 120)
    kickButton.Text = "Kick"
    kickButton.TextColor3 = Color3.new(1, 1, 1)
    kickButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    kickButton.Parent = frame

    kickButton.MouseButton1Click:Connect(function()
        local targetPlayer = getTargetPlayer()  -- Implement this function to get the target player
        if targetPlayer then
            AdminPanel.kick(targetPlayer, "Kicked by admin")
        end
    end)
end

return AdminPanelGUI