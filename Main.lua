local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "#Rust v1.16.1",
   Icon = 0,
   LoadingTitle = "Made by Weirdman2112",
   LoadingSubtitle = "Made with love",
   ShowText = "Rayfield",
   Theme = "Default",
   ToggleUIKeybind = "K",
   DisableRayfieldPrompts = true,
   DisableBuildWarnings = true,
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = ""
   },
   Discord = {
      Enabled = false,
      Invite = "https://pastefy.app/u93hg08J",
      RememberJoins = false
   },
   KeySystem = true,
   KeySettings = {
      Title = "Enter the key!",
      Subtitle = "Key System",
      Note = "Re-Enter Key",
      FileName = "Key",
      SaveKey = false,
      GrabKeyFromSite = false,
      Key = {"nrcjfq"}
   }
})

local Tab = Window:CreateTab("Tab Example", 4483362458)

Rayfield:Notify({
   Title = "Notification",
   Content = "Hii",
   Duration = 6.5,
   Image = "home",
})

local Button = Tab:CreateButton({
   Name = "Button Example",
   Callback = function()
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Toggle Example",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
   end,
})

local ColorPicker = Tab:CreateColorPicker({
   Name = "Color Picker",
   Color = Color3.fromRGB(255,255,255),
   Flag = "ColorPicker1",
   Callback = function(Value)
   end,
})

local Slider = Tab:CreateSlider({
   Name = "Slider Example",
   Range = {0, 100},
   Increment = 10,
   Suffix = "Bananas",
   CurrentValue = 10,
   Flag = "Slider1",
   Callback = function(Value)
   end,
})

local Input = Tab:CreateInput({
   Name = "Input Example",
   CurrentValue = "",
   PlaceholderText = "Input Placeholder",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
   end,
})

local Dropdown = Tab:CreateDropdown({
   Name = "Dropdown Example",
   Options = {"Option 1","Option 2"},
   CurrentOption = {"Option 1"},
   MultipleOptions = false,
   Flag = "Dropdown1",
   Callback = function(Options)
   end,
})

local Keybind = Tab:CreateKeybind({
   Name = "Keybind Example",
   CurrentKeybind = "Q",
   HoldToInteract = false,
   Flag = "Keybind1",
   Callback = function(Keybind)
   end,
})

local Label = Tab:CreateLabel("Label Example", "rewind")

local OPGunDropdown = Tab:CreateDropdown({
   Name = "Select OP Gun",
   Options = {"EOKA"},
   CurrentOption = {"EOKA"},
   MultipleOptions = false,
   Flag = "OPGunDropdown",
   Callback = function(Option)
   end,
})

local OPButton = Tab:CreateButton({
   Name = "Use OP Gun",
   Callback = function()
      local GUNNAME = OPGunDropdown.CurrentOption[1]
      local backpack = game:GetService("Players").LocalPlayer.Backpack

      if backpack:FindFirstChild(GUNNAME) then
         local gun = backpack[GUNNAME]
         
         if gun:FindFirstChild("ACS_Modulo") then
            local acs = gun.ACS_Modulo
            local variaveis = acs:FindFirstChild("Variaveis")
            
            if variaveis then
               local settings = variaveis:FindFirstChild("Settings")
               local suppressor = variaveis:FindFirstChild("Suppressor")
               local ammo = variaveis:FindFirstChild("Ammo")
               
               if settings then
                  local bull = require(settings)
                  bull.Bullets = 100
                  bull.ExplosiveHit = true
                  bull.ExplosionDamage = 99999999
                  bull.MinRecoilPower = 0
                  bull.MaxRecoilPower = 0 
                  bull.RecoilPunch = 0
                  bull.RainbowMode = true
                  bull.RecoilPowerStepAmount = 0
                  bull.VRecoil = { 0, 0 }
                  bull.HRecoil = { 0, 0 }
                  bull.BDrop = 0
                  bull.MinSpread = 50
                  bull.MaxSpread = 50
               end
               
               if suppressor then
                  suppressor.Value = true
               end
               
               if ammo then
                  ammo.Value = math.huge
               end
               
               Rayfield:Notify({
                  Title = "Success",
                  Content = "OP Gun settings applied for " .. GUNNAME,
                  Duration = 5,
                  Image = "check",
               })
            else
               Rayfield:Notify({
                  Title = "Error",
                  Content = "Variaveis module not found",
                  Duration = 5,
                  Image = "error",
               })
            end
         else
            Rayfield:Notify({
               Title = "Error",
               Content = "ACS_Modulo not found",
               Duration = 5,
               Image = "error",
            })
         end
      else
         Rayfield:Notify({
            Title = "Error",
            Content = "Weapon " .. GUNNAME .. " not found in backpack",
            Duration = 5,
            Image = "error",
         })
      end
   end,
})
