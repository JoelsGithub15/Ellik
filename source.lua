local ellik = {}

local TweenService = game:GetService("TweenService")
local TextService = game:GetService("TextService")
local UserInputService = game:GetService("UserInputService")

function dragify(Frame)
    local dragToggle = nil
    local dragSpeed = .25
    local dragInput = nil
    local dragStart = nil
    local dragPos = nil

    function updateInput(input)
        Delta = input.Position - dragStart
        Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {Position = Position}):Play()
    end

    Frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
            dragToggle = true
            dragStart = input.Position
            startPos = Frame.Position
            input.Changed:Connect(function()
                if (input.UserInputState == Enum.UserInputState.End) then
                    dragToggle = false
                end
            end)
        end
    end)

    Frame.InputChanged:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            dragInput = input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if (input == dragInput and dragToggle) then
            updateInput(input)
        end
    end)
end

for i,v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "EllikUI" then 
        v:Destroy()
    end
end

function ellik:Create(options)
    local title = options.Title or "Galaxy Hub"   
    local EllikUI = Instance.new("ScreenGui")
    local backFrame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local topBar = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local cover = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local Game = Instance.new("TextLabel")
    local User = Instance.new("ImageLabel")
    local SideBar = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local cover_2 = Instance.new("Frame")
    local allTabs = Instance.new("Frame")
    local ScrollingFrame = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")

    
    --Properties:
    
    EllikUI.Name = "Galaxy Hub"
    EllikUI.Parent = game.CoreGui
    EllikUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    backFrame.Name = "backFrame"
    backFrame.Parent = EllikUI
    backFrame.BackgroundColor3 = Color3.fromRGB(42, 40, 52)
    backFrame.BorderSizePixel = 0
    backFrame.Position = UDim2.new(0.0170925632, 0, 0.25677368, 0)
    backFrame.Size = UDim2.new(0, 759, 0, 440)
    
    UICorner.Parent = backFrame
    
    topBar.Name = "topBar"
    topBar.Parent = backFrame
    topBar.BackgroundColor3 = Color3.fromRGB(46, 46, 62)
    topBar.BorderSizePixel = 0
    topBar.Position = UDim2.new(-0.000528850709, 0, -0.00112308154, 0)
    topBar.Size = UDim2.new(0, 759, 0, 38)
    
    UICorner_2.Parent = topBar
    
    cover.Name = "cover"
    cover.Parent = topBar
    cover.BackgroundColor3 = Color3.fromRGB(46, 46, 62)
    cover.BorderSizePixel = 0
    cover.Position = UDim2.new(0.000529453857, 0, 0.333095938, 0)
    cover.Size = UDim2.new(0, 758, 0, 43)
    
    Title.Name = "Title"
    Title.Parent = topBar
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.Position = UDim2.new(0.242099673, 0, 0.0526315793, 0)
    Title.Size = UDim2.new(0, 232, 0, 30)
    Title.Font = Enum.Font.Gotham
    Title.Text = title
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 20.000
    Title.TextXAlignment = Enum.TextXAlignment.Left
    
    Game.Name = "Game"
    Game.Parent = topBar
    Game.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Game.BackgroundTransparency = 1.000
    Game.Position = UDim2.new(0.242099673, 0, 0.684210479, 0)
    Game.Size = UDim2.new(0, 232, 0, 27)
    Game.Font = Enum.Font.Gotham
    Game.Text = "Arsenal"
    Game.TextColor3 = Color3.fromRGB(255, 255, 255)
    Game.TextSize = 15.000
    Game.TextTransparency = 0.670
    Game.TextXAlignment = Enum.TextXAlignment.Left
    
    User.Name = "User"
    User.Parent = topBar
    User.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    User.BackgroundTransparency = 1.000
    User.Position = UDim2.new(0.948616505, 0, 0.421052635, 0)
    User.Size = UDim2.new(0, 23, 0, 23)
    User.Image = "rbxassetid://7072724349"
    User.ImageTransparency = 0.800
    
    SideBar.Name = "SideBar"
    SideBar.Parent = backFrame
    SideBar.BackgroundColor3 = Color3.fromRGB(50, 49, 65)
    SideBar.BorderSizePixel = 0
    SideBar.Position = UDim2.new(-0.000528147095, 0, -0.00112326827, 0)
    SideBar.Size = UDim2.new(0, 175, 0, 440)
    
    UICorner_3.Parent = SideBar
    
    cover_2.Name = "cover"
    cover_2.Parent = SideBar
    cover_2.BackgroundColor3 = Color3.fromRGB(50, 49, 65)
    cover_2.BorderSizePixel = 0
    cover_2.Position = UDim2.new(0.422661394, 0, 0.00112179841, 0)
    cover_2.Size = UDim2.new(0, 101, 0, 439)
    
    allTabs.Name = "allTabs"
    allTabs.Parent = SideBar
    allTabs.BackgroundColor3 = Color3.fromRGB(50, 49, 65)
    allTabs.BorderSizePixel = 0
    allTabs.Position = UDim2.new(0.0514285713, 0, 0.0189371984, 0)
    allTabs.Size = UDim2.new(0, 159, 0, 423)
    
    ScrollingFrame.Parent = allTabs
    ScrollingFrame.Active = true
    ScrollingFrame.BackgroundColor3 = Color3.fromRGB(50, 49, 65)
    ScrollingFrame.BorderSizePixel = 0
    ScrollingFrame.Size = UDim2.new(0, 165, 0, 423)
    ScrollingFrame.ScrollBarThickness = 0
    
    UIListLayout.Parent = ScrollingFrame
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 4)
    

    

    local PagesFolder = Instance.new("Folder")
    PagesFolder.Parent = backFrame
    dragify(backFrame)

    local tabs = {}

    function tabs:NewTab(options)
        local tabtitle = options.Title or "Example Tab"
        local logo = options.TabLogo or "http://www.roblox.com/asset/?id=7429253275"

        local TabButton = Instance.new("TextButton")
        local tabLogo = Instance.new("ImageLabel")
        local TextLabel = Instance.new("TextLabel")
        local ChosenFrame = Instance.new("Frame")
        local UICorner_4 = Instance.new("UICorner")

        TabButton.Name = "TabButton"
        TabButton.Parent = ScrollingFrame
        TabButton.BackgroundColor3 = Color3.fromRGB(50, 49, 65)
        TabButton.BackgroundTransparency = 1.000
        TabButton.BorderSizePixel = 0
        TabButton.Size = UDim2.new(0, 159, 0, 41)
        TabButton.AutoButtonColor = false
        TabButton.Font = Enum.Font.SourceSans
        TabButton.Text = ""
        TabButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        TabButton.TextSize = 14.000
        
        tabLogo.Name = "tabLogo"
        tabLogo.Parent = TabButton
        tabLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        tabLogo.BackgroundTransparency = 1.000
        tabLogo.Position = UDim2.new(0.0691823959, 0, 0.24390243, 0)
        tabLogo.Size = UDim2.new(0, 20, 0, 20)
        tabLogo.Image = "rbxassetid://7072977617"
        tabLogo.ImageTransparency = 0.580
        
        TextLabel.Parent = TabButton
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.Position = UDim2.new(0.301886708, 0, -0.073170729, 0)
        TextLabel.Size = UDim2.new(0, 117, 0, 47)
        TextLabel.Font = Enum.Font.GothamSemibold
        TextLabel.Text = tabtitle 
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextSize = 14.000
        TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextTransparency = 0.580
        TextLabel.TextXAlignment = Enum.TextXAlignment.Left
        
        ChosenFrame.Name = "ChosenFrame"
        ChosenFrame.Parent = TabButton
        ChosenFrame.BackgroundColor3 = Color3.fromRGB(115, 123, 191)
        ChosenFrame.BackgroundTransparency = 1.000
        ChosenFrame.Position = UDim2.new(0.999999881, 0, 0.0567158014, 0)
        ChosenFrame.Size = UDim2.new(0, 23, 0, 34)
        ChosenFrame.ZIndex = 2
        
        UICorner_4.CornerRadius = UDim.new(0, 5)
        UICorner_4.Parent = ChosenFrame

        local tab = Instance.new("Frame")
        local shadowpx = Instance.new("ImageLabel")
        local TabTitle = Instance.new("TextLabel")
        local UICorner_5 = Instance.new("UICorner")
        local Scroll = Instance.new("ScrollingFrame")
        local elementList = Instance.new("UIListLayout")

        tab.Name = "tab"
        tab.Parent = PagesFolder
        tab.BackgroundColor3 = Color3.fromRGB(46, 46, 62)
        tab.BorderSizePixel = 0
        tab.Position = UDim2.new(0.251118749, 0, 0.220086664, 0)
        tab.Size = UDim2.new(0, 552, 0, 327)
        tab.Visible = false

        shadowpx.Name = "shadowpx"
        shadowpx.Parent = tab
        shadowpx.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        shadowpx.BackgroundTransparency = 1.000
        shadowpx.Position = UDim2.new(-0.0561594181, 0, -0.0536723025, 0)
        shadowpx.Size = UDim2.new(0, 613, 0, 362)
        shadowpx.ZIndex = 0
        shadowpx.Image = "http://www.roblox.com/asset/?id=7429253275"
        shadowpx.ImageColor3 = Color3.fromRGB(0, 0, 0)
        shadowpx.ImageTransparency = 0.800
        
        TabTitle.Name = "TabTitle"
        TabTitle.Parent = tab
        TabTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabTitle.BackgroundTransparency = 1.000
        TabTitle.Position = UDim2.new(0.00724637695, 0, -0.127445415, 0)
        TabTitle.Size = UDim2.new(0, 208, 0, 41)
        TabTitle.Font = Enum.Font.GothamSemibold
        TabTitle.Text = tabtitle
        TabTitle.TextColor3 = Color3.fromRGB(115, 123, 191)
        TabTitle.TextSize = 15.000
        TabTitle.TextXAlignment = Enum.TextXAlignment.Left
        
        UICorner_5.CornerRadius = UDim.new(0, 6)
        UICorner_5.Parent = tab
        
        Scroll.Name = "Scroll"
        Scroll.Parent = tab
        Scroll.Active = true
        Scroll.BackgroundColor3 = Color3.fromRGB(46, 46, 62)
        Scroll.BorderSizePixel = 0
        Scroll.Position = UDim2.new(0.0181159414, 0, 0.0214067269, 0)
        Scroll.Size = UDim2.new(0, 534, 0, 320)
        Scroll.ScrollBarThickness = 0
        
        elementList.Name = "elementList"
        elementList.Parent = Scroll
        elementList.SortOrder = Enum.SortOrder.LayoutOrder
        elementList.Padding = UDim.new(0, 4)

        TabButton.MouseButton1Click:Connect(function()
            for _,v in next, PagesFolder:GetChildren() do
                v.Visible = false
            end
            tab.Visible = true

            for _,v in next, allTabs:GetDescendants() do
                if v:IsA("TextButton") then
                    TweenService:Create(v.TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                        TextTransparency = 0.58,
                        TextStrokeTransparency = 1
                    }):Play()
                    TweenService:Create(v.tabLogo, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                        ImageTransparency = 0.58
                    }):Play()
                    TweenService:Create(v.ChosenFrame, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
                end
            end
            TweenService:Create(TabButton.TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                TextTransparency = 0,
                TextStrokeTransparency = 0.88
            }):Play()
            TweenService:Create(TabButton.tabLogo, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                ImageTransparency = 0
            }):Play()
            TweenService:Create(ChosenFrame, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()
        end)

        local elements = {}

        function elements:Button(options)
            local text = options.Text or "Text Button"
            local callback = options.Callback or function() end
            local Button = Instance.new("TextButton")
            local ButtonCorner = Instance.new("UICorner")

            --Properties:

            Button.Name = "Button"
            Button.Parent = Scroll
            Button.BackgroundColor3 = Color3.fromRGB(110, 122, 200)
            Button.Position = UDim2.new(0, 0, 0.581250012, 0)
            Button.Size = UDim2.new(0, 534, 0, 34)
            Button.AutoButtonColor = false
            Button.Font = Enum.Font.Gotham
            Button.Text = text
            Button.TextColor3 = Color3.fromRGB(255, 255, 255)
            Button.TextSize = 14.000

            ButtonCorner.CornerRadius = UDim.new(0, 3)
            ButtonCorner.Name = "ButtonCorner"
            ButtonCorner.Parent = Button
            Button.MouseButton1Click:Connect(function()
                callback()
                TweenService:Create(Button, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(187, 200, 255)}):Play()
                wait(0.08)
                TweenService:Create(Button, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(110, 122, 200)}):Play()
            end)
            Button.MouseEnter:Connect(function()
                TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), { BackgroundColor3 = Color3.fromRGB(140, 151, 223) }):Play()
            end)
            Button.MouseLeave:Connect(function()
                TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), { BackgroundColor3 = Color3.fromRGB(110, 122, 200) }):Play()
            end)
        end

        function elements:Toggle(options)
            local text = options.Text or function() end
            local state = options.State or false
            local callback = options.Callback or function() end
            local mouse_entered = false

            local Toggle = Instance.new("TextButton")
            local Color = Instance.new("Frame")
            local Check = Instance.new("ImageLabel")
            local ColorCorner = Instance.new("UICorner")
            local TextLabel = Instance.new("TextLabel")

            --Properties:

            Toggle.Name = "Toggle"
            Toggle.Parent = Scroll
            Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Toggle.BackgroundTransparency = 1.000
            Toggle.Size = UDim2.new(0, 534, 0, 32)
            Toggle.Font = Enum.Font.SourceSans
            Toggle.Text = ""
            Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            Toggle.TextSize = 14.000
            Toggle.MouseEnter:Connect(function()
                mouse_entered = true
                TweenService:Create(Toggle, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0.95}):Play()
            end)

            Toggle.MouseLeave:Connect(function()
                mouse_entered = false
                TweenService:Create(Toggle, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
            end)

            local UICorner = Instance.new("UICorner")

            --Properties:
            
            UICorner.CornerRadius = UDim.new(0, 3)
            UICorner.Parent = Toggle

            Color.Name = "Color"
            Color.Parent = Toggle
            Color.BackgroundColor3 = Color3.fromRGB(41, 40, 52)
            Color.Position = UDim2.new(0.0131086139, 0, 0.1875, 0)
            Color.Size = UDim2.new(0, 20, 0, 20)

            Check.Name = "Check"
            Check.Parent = Color
            Check.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Check.BackgroundTransparency = 1.000
            Check.Position = UDim2.new(0.100000009, 0, 0.150000006, 0)
            Check.Size = UDim2.new(0, 15, 0, 15)
            Check.Image = "rbxassetid://7072706620"
            Check.ImageTransparency = 1.000

            ColorCorner.CornerRadius = UDim.new(0, 3)
            ColorCorner.Name = "ColorCorner"
            ColorCorner.Parent = Color

            TextLabel.Parent = Toggle
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.Position = UDim2.new(0.0692883879, 0, 0, 0)
            TextLabel.Size = UDim2.new(0, 212, 0, 32)
            TextLabel.Font = Enum.Font.GothamSemibold
            TextLabel.Text = text
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextSize = 14.000
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left

            local toggled = false

            Toggle.MouseButton1Click:Connect(function()
                toggled = not toggled
                callback(toggled)

                if mouse_entered then
                    TweenService:Create(Toggle, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0.60}):Play()
                    wait(0.08)
                    TweenService:Create(Toggle, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0.95}):Play()   
                else
                    TweenService:Create(Toggle, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0.60}):Play()
                    wait(0.08)
                    TweenService:Create(Toggle, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0.1}):Play()    
                end
                if toggled then
                    TweenService:Create(Color, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(110, 122, 200)}):Play()
                    TweenService:Create(Check, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {ImageTransparency = 0}):Play()
                else
                    TweenService:Create(Color, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(41, 40, 52)}):Play()
                    TweenService:Create(Check, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {ImageTransparency = 1}):Play()
                end
            end)
        end
        function elements:Dropdown(options)
            local title = options.Title or 'Dropdown Example' 
            local list = options.List or {}
            local callback = options.Callback or function() end
            local items = 0

            local Dropdown = Instance.new("TextButton")
            local DropTitle = Instance.new("TextLabel")
            local DropChoice = Instance.new("TextLabel")
            local ImageLabel = Instance.new("ImageLabel")
            local Drop = Instance.new("Frame")
            local DropScroll = Instance.new("ScrollingFrame")
            local OptionList = Instance.new("UIListLayout")
          
            local Dropcorner = Instance.new("UICorner")

            --Properties:

            Dropdown.Name = "Dropdown"
            Dropdown.Parent = Scroll
            Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Dropdown.BackgroundTransparency = 1.000
            Dropdown.Position = UDim2.new(0, 0, 0.0588235296, 0)
            Dropdown.Size = UDim2.new(0, 534, 0, 32)
            Dropdown.Font = Enum.Font.SourceSans
            Dropdown.Text = ""
            Dropdown.TextColor3 = Color3.fromRGB(0, 0, 0)
            Dropdown.TextSize = 14.000

            DropTitle.Name = "DropTitle"
            DropTitle.Parent = Dropdown
            DropTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropTitle.BackgroundTransparency = 1.000
            DropTitle.Position = UDim2.new(0.0168539323, 0, 0.0588235296, 0)
            DropTitle.Size = UDim2.new(0, 212, 0, 32)
            DropTitle.Font = Enum.Font.GothamSemibold
            DropTitle.Text = "Dropdown"
            DropTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            DropTitle.TextSize = 14.000
            DropTitle.TextXAlignment = Enum.TextXAlignment.Left

            DropChoice.Name = "DropChoice"
            DropChoice.Parent = Dropdown
            DropChoice.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropChoice.BackgroundTransparency = 1.000
            DropChoice.Position = UDim2.new(0.425093621, 0, 0.0588235855, 0)
            DropChoice.Size = UDim2.new(0, 266, 0, 32)
            DropChoice.Font = Enum.Font.GothamSemibold
            DropChoice.Text = "Choose An Option"
            DropChoice.TextColor3 = Color3.fromRGB(255, 255, 255)
            DropChoice.TextSize = 14.000
            DropChoice.TextTransparency = 0.600
            DropChoice.TextXAlignment = Enum.TextXAlignment.Right

            ImageLabel.Parent = Dropdown
            ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel.BackgroundTransparency = 1.000
            ImageLabel.Position = UDim2.new(0.934456944, 0, 0.25, 0)
            ImageLabel.Size = UDim2.new(0, 18, 0, 18)
            ImageLabel.Image = "rbxassetid://7072706663"
            ImageLabel.ImageTransparency = 0.600

            Drop.Name = "Drop"
            Drop.Parent = Dropdown
            Drop.BackgroundColor3 = Color3.fromRGB(41, 40, 52)
            Drop.BorderSizePixel = 0
            Drop.ClipsDescendants = true
            Drop.Position = UDim2.new(0.659176052, 0, 1.03125, 0)
            Drop.Size = UDim2.new(0, 174, 0, 0)

            DropScroll.Name = "DropScroll"
            DropScroll.Parent = Drop
            DropScroll.Active = true
            DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropScroll.BackgroundTransparency = 1.000
            DropScroll.BorderSizePixel = 0
            DropScroll.Position = UDim2.new(0.017, 0,0.02, 0)
            DropScroll.Size = UDim2.new(0, 168, 0, 140)
            DropScroll.ScrollBarThickness = 0


            OptionList.Name = "OptionList"
            OptionList.Parent = DropScroll
            OptionList.SortOrder = Enum.SortOrder.LayoutOrder

            OptionList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                DropScroll.CanvasSize = UDim2.new(0,0,0,OptionList.AbsoluteContentSize.Y) 
            end)

            Dropcorner.CornerRadius = UDim.new(0, 3)
            Dropcorner.Name = "Dropcorner"
            Dropcorner.Parent = Drop

            local dropped = false

            Dropdown.ZIndex = 2
            Dropdown.MouseButton1Click:Connect(function()
                if not dropped then
                    dropped = true
                    TweenService:Create(ImageLabel, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), { Rotation = 90}):Play()
                    TweenService:Create(Drop, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), { Size = UDim2.new(0, 174, 0, 147)}):Play()
                else
                    dropped = false
                    --90--]]
                    TweenService:Create(ImageLabel, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), { Rotation = 0}):Play()

                    TweenService:Create(Drop, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), { Size = UDim2.new(0, 174, 0, 0)}):Play()
                end
            end)

            Dropdown.MouseEnter:Connect(function()
                TweenService:Create(DropChoice, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), { TextTransparency = 0}):Play()
                TweenService:Create(ImageLabel, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), { ImageTransparency = 0}):Play()
            end)
            Dropdown.MouseLeave:Connect(function()
                TweenService:Create(DropChoice, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), { TextTransparency = 0.6}):Play()
                TweenService:Create(ImageLabel, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), { ImageTransparency = 0.6}):Play()
            end)

            for i,v in next, list do
                local Option = Instance.new("TextButton")
                local OptnCorner = Instance.new("UICorner")

                Option.Name = "Option"
                Option.Parent = DropScroll
                Option.BackgroundColor3 = Color3.fromRGB(41, 40, 52)
                Option.Size = UDim2.new(0, 170,0, 46)
                Option.AutoButtonColor = false
                Option.Font = Enum.Font.GothamSemibold
                Option.Text = v
                Option.TextColor3 = Color3.fromRGB(255, 255, 255)
                Option.TextSize = 14.000
    
                OptnCorner.CornerRadius = UDim.new(0, 2)
                OptnCorner.Name = "OptnCorner"
                OptnCorner.Parent = Option

                local mouse_dragged = false

                Option.MouseEnter:Connect(function()
                    mouse_dragged = true
                    TweenService:Create(Option, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(47, 46, 61)}):Play()
                end)
                Option.MouseLeave:Connect(function()
                    mouse_dragged = false
                    TweenService:Create(Option, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(41, 40, 52)}):Play()
                end)
                Option.MouseButton1Click:Connect(function()
                    dropped = false
                    DropChoice.Text = v
                    TweenService:Create(ImageLabel, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), { Rotation = 0}):Play()
                    TweenService:Create(Drop, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), { Size = UDim2.new(0, 174, 0, 0)}):Play()
                    callback(v)
                    TweenService:Create(Option, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(129, 125, 165)}):Play()
                    wait(0.08)
                    TweenService:Create(Option, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(41, 40, 52)}):Play()
                end)
            end
            
        end

        function elements:TextBox(options)
            local placeholder = options.PlaceHolder or 'Place Holder'
            local font = options.Font or "Gotham"
            local callback = options.Callback or function() end

            local TextBox = Instance.new("Frame")
            local Box = Instance.new("TextBox")
            local BoxCorner = Instance.new("UICorner")
            local AnimFrame = Instance.new("Frame")

            --Properties:

            TextBox.Name = "TextBox"
            TextBox.Parent = Scroll
            TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextBox.BackgroundTransparency = 1.000
            TextBox.Position = UDim2.new(0, 0, 0.699999988, 0)
            TextBox.Size = UDim2.new(0, 525, 0, 36)

            Box.Name = "Box"
            Box.Parent = TextBox
            Box.BackgroundColor3 = Color3.fromRGB(40, 38, 50)
            Box.Size = UDim2.new(0, 525, 0, 34)
            Box.Font = Enum.Font.GothamSemibold
            Box.PlaceholderColor3 = Color3.fromRGB(46, 46, 62)
            Box.PlaceholderText = placeholder
            Box.Text = ""
            Box.TextColor3 = Color3.fromRGB(255, 255, 255)
            Box.TextSize = 14.000

            BoxCorner.CornerRadius = UDim.new(0, 7)
            BoxCorner.Name = "BoxCorner"
            BoxCorner.Parent = Box

            AnimFrame.Name = "AnimFrame"
            AnimFrame.Parent = Box
            AnimFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            AnimFrame.BackgroundColor3 = Color3.fromRGB(110, 122, 200)
            AnimFrame.BorderSizePixel = 0
            AnimFrame.Position = UDim2.new(0.499, 0,1.022, 0)
            AnimFrame.Size = UDim2.new(0, 0, 0, 2)
            Box.Focused:Connect(function()
                TweenService:Create(Box, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Color3.fromRGB(255,255,255)}):Play()
                TweenService:Create(AnimFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 515, 0, AnimFrame.AbsoluteSize.Y)}):Play()
            end)

            Box.FocusLost:Connect(function()
                TweenService:Create(Box, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Color3.fromRGB(46, 46, 62)}):Play()
                TweenService:Create(AnimFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 0, 0, AnimFrame.AbsoluteSize.Y)}):Play()
                callback(Box.Text)
            end)
        end

        function elements:Slider(options)
            local title = options.Text or 'Slider Example'
            local max = options.Max or 100
            local min = options.Min or 0
            local def = options.Def or 50
            local callback = options.Callback or function() end
            local Slider = Instance.new("Frame")
            local SliderTitle = Instance.new("TextLabel")
            local Outer = Instance.new("TextButton")
            local OuterCorner = Instance.new("UICorner")
            local Inner = Instance.new("Frame")
            local InnerCorner = Instance.new("UICorner")
            local Circle = Instance.new("Frame")
            local CircleCorner = Instance.new("UICorner")
            local Value = Instance.new("TextLabel")

            --Properties:

            Slider.Name = "Slider"
            Slider.Parent = Scroll
            Slider.BackgroundColor3 = Color3.fromRGB(46, 46, 62)
            Slider.BorderSizePixel = 0
            Slider.Position = UDim2.new(0, 0, 0.337500006, 0)
            Slider.Size = UDim2.new(0, 534, 0, 35)
            Slider.ZIndex = 0

            SliderTitle.Name = "SliderTitle"
            SliderTitle.Parent = Slider
            SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderTitle.BackgroundTransparency = 1.000
            SliderTitle.Position = UDim2.new(0.0168539323, 0, 0.0122396797, 0)
            SliderTitle.Size = UDim2.new(0, 212, 0, 32)
            SliderTitle.Font = Enum.Font.GothamSemibold
            SliderTitle.Text = title
            SliderTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderTitle.TextSize = 14.000
            SliderTitle.TextXAlignment = Enum.TextXAlignment.Left

            Outer.Name = "Outer"
            Outer.Parent = Slider
            Outer.BackgroundColor3 = Color3.fromRGB(41, 40, 52)
            Outer.Position = UDim2.new(0.623127341, 0, 0.368072748, 0)
            Outer.Size = UDim2.new(0, 193, 0, 9)
            Outer.AutoButtonColor = false
            Outer.Font = Enum.Font.SourceSans
            Outer.Text = ""
            Outer.TextColor3 = Color3.fromRGB(0, 0, 0)
            Outer.TextSize = 14.000

            OuterCorner.CornerRadius = UDim.new(1, 8)
            OuterCorner.Name = "OuterCorner"
            OuterCorner.Parent = Outer

            Inner.Name = "Inner"
            Inner.Parent = Outer
            Inner.BackgroundColor3 = Color3.fromRGB(110, 122, 200)
            Inner.BorderSizePixel = 0
            Inner.Position = UDim2.new(-0.00147496362, 0, 0, 0)
            Inner.Size = UDim2.new(0, 0, 0, 9)

            InnerCorner.CornerRadius = UDim.new(1, 8)
            InnerCorner.Name = "InnerCorner"
            InnerCorner.Parent = Inner

            Circle.Name = "Circle"
            Circle.Parent = Inner
            Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Circle.BorderSizePixel = 0
            Circle.Position = UDim2.new(0.910591483, 0, -0.5, 0)
            Circle.Size = UDim2.new(0, 17, 0, 17)

            CircleCorner.CornerRadius = UDim.new(1, 8)
            CircleCorner.Name = "CircleCorner"
            CircleCorner.Parent = Circle

            Value.Name = "Value"
            Value.Parent = Slider
            Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Value.BackgroundTransparency = 1.000
            Value.Position = UDim2.new(0.503745317, 0, 0.0190717429, 0)
            Value.Size = UDim2.new(0, 57, 0, 32)
            Value.Font = Enum.Font.GothamSemibold
            Value.TextColor3 = Color3.fromRGB(255, 255, 255)
            Value.TextSize = 14.000
            Value.TextXAlignment = Enum.TextXAlignment.Right
            Value.Text = def
            local dragging = false 

            local function slide(input)
                local pos = UDim2.new(math.clamp((input.Position.X - Outer.AbsolutePosition.X) / Outer.AbsoluteSize.X, 0, 1), 0, 0, 9)
                Inner:TweenSize(pos, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
                local text_value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
                Value.Text = tostring(text_value)
                callback(text_value)
            end

            Outer.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    slide(input)
                    dragging = true
                end
            end)

            Outer.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging = false
                end
            end)

            UserInputService.InputChanged:Connect(function(input)
                if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                    slide(input)
                end
            end)

            local slider_functions = {}

                local value = tostring(def and math.floor((def / max) * (max - min) + min) or 0)
                Value.Text = value
                callback(value)

                local pos = UDim2.new((def or 0) / max, 0, 0, 9)
                Inner:TweenSize(pos, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)

        end

        function elements:Bind(options)
            local key = options.Key.Name or "Keybind"
            local text_title = options.Text
            local callback = options.Callback or function() end
            local Keybind = Instance.new("Frame")
            local BindTitle = Instance.new("TextLabel")
            local BindButton = Instance.new("TextButton")
            local BindCorner = Instance.new("UICorner")

            --Properties:

            Keybind.Name = "Keybind"
            Keybind.Parent = Scroll
            Keybind.BackgroundColor3 = Color3.fromRGB(46, 46, 62)
            Keybind.BorderSizePixel = 0
            Keybind.Position = UDim2.new(-0.00374531839, 0, 0.246272936, 0)
            Keybind.Size = UDim2.new(0, 534, 0, 34)
            Keybind.ZIndex = 0

            BindTitle.Name = "BindTitle"
            BindTitle.Parent = Keybind
            BindTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            BindTitle.BackgroundTransparency = 1.000
            BindTitle.Position = UDim2.new(0.0168539323, 0, 0.0588235296, 0)
            BindTitle.Size = UDim2.new(0, 212, 0, 32)
            BindTitle.Font = Enum.Font.GothamSemibold
            BindTitle.Text = text_title
            BindTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            BindTitle.TextSize = 14.000
            BindTitle.TextXAlignment = Enum.TextXAlignment.Left

            BindButton.Name = "BindButton"
            BindButton.Parent = Keybind
            BindButton.BackgroundColor3 = Color3.fromRGB(40, 38, 49)
            BindButton.BorderSizePixel = 0
            BindButton.Position = UDim2.new(0.844569266, 0, 0.14705883, 0)
            BindButton.Size = UDim2.new(0, 79, 0, 29)
            BindButton.AutoButtonColor = false
            BindButton.Font = Enum.Font.GothamSemibold
            BindButton.Text = key or ". . ."
            BindButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            BindButton.TextSize = 14.000
            BindButton.TextTransparency = 0.600

            BindCorner.CornerRadius = UDim.new(0, 3)
            BindCorner.Name = "BindCorner"
            BindCorner.Parent = BindButton

            BindButton.MouseButton1Click:Connect(function()
                BindButton.Text = '. . .'

                local a, b = game:GetService('UserInputService').InputBegan:wait();
                if a.KeyCode.Name ~= "Unknown" then
                    BindButton.Text = a.KeyCode.Name
                    key = a.KeyCode.Name;
                end
            end)

            if bruh_connection then 
                bruh_connection:Disconnect()
            end

            bruh_connection = game:GetService("UserInputService").InputBegan:connect(function(current, pressed)
                if not pressed then
                    if current.KeyCode.Name == key then
                        callback(key)
                    end
                end
            end)
        end

        return elements
    end

    return tabs
end

--[[local win = ellik:Create({
    Title = "Ellik LMAO"
})

local tab = win:NewTab({
    Title = "TriggerBot"
})

tab:Button({
    Text = 'Hello',
    Callback = function()
        print'hello'
    end
})

tab:Toggle({
    Text = 'Toggle Example',
    State = false,
    Callback = function(args)
        print(args)
    end
})

tab:Dropdown({
    Title = 'Hello',
    List = {'ho', 'hi'},
    Callback = function(args)
        print(args)
    end
})

tab:TextBox({
    PlaceHolder = 'Epik Place Holder lmfao',
    Callback = function(args)
        print(args)
    end
})

tab:Slider({
    Text = 'Slider Example',
    Min = 16,
    Def = 50,
    Max = 100,
    Callback = function(args)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = args
    end
})
tab:Bind({
    Text = 'Bind Example',
    Key = "k",
    Callback = function(args)
        print(args)
    end
})
local tab = win:NewTab({
    Title = "Radar"
})
local tab = win:NewTab({
    Title = "Visuals"
})

local tab = win:NewTab({
    Title = "Misc."
})]]--



return ellik
