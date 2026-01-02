local function IsSecure()
    -- 检查 HttpPost 是否被修改
    -- 正常的内置函数其源文件路径应该是 "[C]"
    local source = debug.info(game.HttpPost, "s")
    if source ~= "[C]" then
        return false -- 说明被 Hook 了
    end
    return true
end

if not IsSecure() then
    game.Players.LocalPlayer:Kick("环境异常")
    local function crash()
    crash()
end
crash()
end

local spyNames = {"HttpSpy", "SimpleSpy", "FluxSpy","Spy"}
task.spawn(function()
    while task.wait(5) do
        for _, name in pairs(spyNames) do
            if game.CoreGui:FindFirstChild(name, true) or game.Players.LocalPlayer.PlayerGui:FindFirstChild(name, true) then
                game.Players.LocalPlayer:Kick("环境异常")
                local function crash()
    crash()
end
crash()
            end
        end
    end
end)

local function IsSecure(func)
    -- 内置函数在 debug.info 中返回的 source 应该是 "[C]"
    -- 如果被 Spy 工具 Hook 了，它会变成 "@script_path" 或其他内容
    local source = debug.info(func, "s")
    return source == "[C]"
end

-- 检查关键的网络/注入点
if not IsSecure(game.HttpPost) or not IsSecure(Instance.new("RemoteEvent").FireServer) then
    game.Players.LocalPlayer:Kick("环境异常")
    local function crash()
    crash()
end
crash()
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/HKJQ3/YT-script/refs/heads/main/script/main.lua"))()
