local UILib = loadstring(game:HttpGet('https://raw.githubusercontent.com/StepBroFurious/Script/main/HydraHubUi.lua'))()
local Window = UILib.new("hajun_dev123", "hajun_dev123", "교육목적으로만 만들어짐.")
local Category1 = Window:Category("비주얼", "http://www.roblox.com/asset/?id=8395621517")
local SubButton1 = Category1:Button("표지판", "http://www.roblox.com/asset/?id=8395747586")
local Section1 = SubButton1:Section("오직 교육용으로 만들어짐", "Left")

local ohString1 = ""

Section1:Textbox({
    Title = "표지판 글",
    Description = "",
    Default = "",
}, function(value1)
    ohString1 = value1
end)

Section1:Toggle({
    Title = "표지판 바꾸기 [ 본인이 표지판을 들고있어야 작동을 합니다 ]",
    Description = "On/Off",
    Default = false
}, function(value1, value)
    while true do
        wait(0.25)
        for i, v in ipairs(game.Players:GetPlayers()) do
            if v.Character:FindFirstChild("📝") then
                v.Character["📝"].UpdateSign:FireServer(ohString1)
            end
        end
    end
end)
