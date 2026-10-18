# Roblox Admin Panel

This project contains scripts for a Roblox admin panel with fly, ban, and kick functionalities. The admin panel is designed to be easy to set up and use, providing administrators with essential tools to manage their Roblox games effectively.

## Install

1. Create a new Roblox game in Roblox Studio.
2. Create a new folder in the ServerScriptService named "AdminPanel".
3. Place the following scripts in the AdminPanel folder:
   - `AdminPanel.module.lua`
   - `AdminPanelGUI.module.lua`
4. Place `AdminPanelServerScript.server.lua` in the ServerScriptService.
5. Replace the placeholder admin group ID in `AdminPanel.module.lua` with your actual admin group ID.
6. Publish the game and test the admin panel functionalities.

## Use

1. Launch the Roblox game.
2. Players who are part of the admin group will see the admin panel GUI.
3. Use the "Fly" button to enable flying for the player.
4. Use the "Ban" button to ban a target player. (Note: Implement the `getTargetPlayer` function to select the target player.)
5. Use the "Kick" button to kick a target player. (Note: Implement the `getTargetPlayer` function to select the target player.)

---

More Roblox script projects by EnderDevelopment: https://github.com/EnderDevelopment

Project page: https://dash.enderdevelopment.com/community/ebcb1927-bd80-4a14-9207-428846a15658?utm_source=github&utm_medium=readme&utm_campaign=auto_publish&utm_content=ebcb1927-bd80-4a14-9207-428846a15658
