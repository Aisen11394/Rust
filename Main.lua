--https://docs.sirius.menu/rayfield
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "#Rust v1.16.1",
   Icon = 0, -- Use 0 for no icon
   LoadingTitle = "Made by Weirdman2112",
   LoadingSubtitle = "Made with love",
   ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
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
      Enabled = true,
      Invite = "https://pastefy.app/u93hg08J",
      RememberJoins = false
   },

   KeySystem = true,
   KeySettings = {
      Title = "Enter the key!",
      Subtitle = "Key System",
      Note = "https://pastefy.app/u93hg08J",
      FileName = "Key",
      SaveKey = false,
      GrabKeyFromSite = false,
      Key = {"nrcjfq"}
   }
})

local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image

Rayfield:Notify({
   Title = "Notification",
   Content = "Hii",
   Duration = 6.5,
   Image = "home",
})

local Button = Tab:CreateButton({
   Name = "Button Example",
   Callback = function()
      print("button clicked")
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Toggle Example",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
      print(Value)
   end,
})

local ColorPicker = Tab:CreateColorPicker({
   Name = "Color Picker",
   Color = Color3.fromRGB(255,255,255),
   Flag = "ColorPicker1",
   Callback = function(Value)
      local r = math.floor(Value.R * 255)
      local g = math.floor(Value.G * 255)
      local b = math.floor(Value.B * 255)
      print("RGB:", r, g, b)
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
      print("Current Banana:", Value)
   end,
})

local Input = Tab:CreateInput({
   Name = "Input Example",
   CurrentValue = "",
   PlaceholderText = "Input Placeholder",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
      -- Runs when input changes
      print("Input text:", Text)
   end,
})

local Dropdown = Tab:CreateDropdown({
   Name = "Dropdown Example",
   Options = {"Option 1","Option 2"},
   CurrentOption = {"Option 1"},
   MultipleOptions = false,
   Flag = "Dropdown1",
   Callback = function(Options)
      -- Runs when dropdown selection changes
      print("Selected options:", table.concat(Options, ", "))
   end,
})

local Keybind = Tab:CreateKeybind({
   Name = "Keybind Example",
   CurrentKeybind = "Q",
   HoldToInteract = false,
   Flag = "Keybind1",
   Callback = function(Keybind)
      -- Runs when keybind is pressed or released
      print("Keybind active:", Keybind)
   end,
})

local Label = Tab:CreateLabel("Label Example", "rewind")
