if game:GetService("RunService"):IsClient() then print("skipping gay skidded fe code") end
if not game:GetService("RunService"):IsClient() then
print("FE Compatibility: by WaverlyCole");
InternalData = {}
do
    script.Parent = owner.Character
    local Event = Instance.new("RemoteEvent");Event.Name = "UserInput"
    local function NewFakeEvent()
        local Bind = Instance.new("BindableEvent")
        local Fake;Fake = {Connections = {},
        fakeEvent=true;
        Connect=function(self,Func)
            Bind.Event:connect(Func)
            self.Connections[Bind] = true
            return setmetatable({Connected = true},{
            __index = function (self,Index)
                if Index:lower() == "disconnect" then
                    return function() Fake.Connections[Bind] = false;self.Connected = false end
                end
                return Fake[Index]
            end;
            __tostring = function() return "Connection" end;
        })
        end}
        Fake.connect = Fake.Connect;return Fake;
    end
    local Mouse = {Target=nil,Hit=CFrame.new(),KeyUp=NewFakeEvent(),KeyDown=NewFakeEvent(),Button1Up=NewFakeEvent(),Button1Down=NewFakeEvent()}
    local UserInputService = {InputBegan=NewFakeEvent(),InputEnded=NewFakeEvent()}
    local ContextActionService = {Actions={},BindAction = function(self,actionName,Func,touch,...)
        self.Actions[actionName] = Func and {Name=actionName,Function=Func,Keys={...}} or nil
    end};ContextActionService.UnBindAction = ContextActionService.BindAction
    local function TriggerEvent(self,Event,...)
        local Trigger = Mouse[Event]
        if Trigger and Trigger.fakeEvent and Trigger.Connections then
            for Connection,Active in pairs(Trigger.Connections) do if Active then Connection:Fire(...) end end
        end
    end
    Mouse.TrigEvent = TriggerEvent;UserInputService.TrigEvent = TriggerEvent
    Event.OnServerEvent:Connect(function(FiredBy,Input)
        if FiredBy.Name ~= owner.Name then return end
        if Input.MouseEvent then
            Mouse.Target = Input.Target;Mouse.Hit = Input.Hit
        else
            local Begin = Input.UserInputState == Enum.UserInputState.Begin
            if Input.UserInputType == Enum.UserInputType.MouseButton1 then return Mouse:TrigEvent(Begin and "Button1Down" or "Button1Up") end
            for _,Action in pairs(ContextActionService.Actions) do
                for _,Key in pairs(Action.Keys) do if Key==Input.KeyCode then Action.Function(Action.Name,Input.UserInputState,Input) end end
            end
            Mouse:TrigEvent(Begin and "KeyDown" or "KeyUp",Input.KeyCode.Name:lower())
            UserInputService:TrigEvent(Begin and "InputBegan" or "InputEnded",Input,false)
        end
    end)
    InternalData["Mouse"] = Mouse;InternalData["ContextActionService"] = ContextActionService;InternalData["UserInputService"] = UserInputService
    Event.Parent = owner.Character
end
RealGame = game;game = setmetatable({},{
    __index = function (self,Index)
        local Sandbox = function (Thing)
            if Thing:IsA("Player") then
                local RealPlayer = Thing
                return setmetatable({},{
                    __index = function (self,Index)
                        local Type = type(RealPlayer[Index])
                        if Type == "function" then
                            if Index:lower() == "getmouse" or Index:lower() == "mouse" then
                                return function (self)return InternalData["Mouse"] end
                            end
                            return function (self,...)return RealPlayer[Index](RealPlayer,...) end
                        end
                        return RealPlayer[Index]
                    end;
                    __tostring = function(self) return RealPlayer.Name end
                })
            end
        end
        if RealGame[Index] then
            local Type = type(RealGame[Index])
            if Type == "function" then
                if Index:lower() == "getservice" or Index:lower() == "service" then
                    return function (self,Service)
                        local FakeServices = {
                            ["players"] = function()
                                return setmetatable({},{
                                    __index = function (self2,Index2)
                                        local RealService = RealGame:GetService(Service)
                                        local Type2 = type(Index2)
                                        if Type2 == "function" then
                                            return function (self,...) return RealService[Index2](RealService,...)end
                                        else
                                            if Index2:lower() == "localplayer" then return Sandbox(owner) end
                                            return RealService[Index2]
                                        end
                                    end;
                                    __tostring = function(self) return RealGame:GetService(Service).Name end
                                })
                            end;
                            ["contextactionservice"] = function() return InternalData["ContextActionService"] end;
                            ["userinputservice"] = function() return InternalData["UserInputService"] end;
                            ["runservice"] = function()
                                return setmetatable({},{
                                    __index = function(self2,Index2)
                                        local RealService = RealGame:GetService(Service)
                                        local Type2 = type(Index2)
                                        if Type2 == "function" then
                                            return function (self,...) return RealService[Index2](RealService,...) end
                                        else
                                            local RunServices = {
                                                ["bindtorenderstep"] = function() return function (self,Name,Priority,Function) return RealGame:GetService("RunService").Stepped:Connect(Function) end end;
                                                ["renderstepped"] = function() return RealService["Stepped"] end
                                            }
                                            if RunServices[Index2:lower()] then return RunServices[Index2:lower()]() end
                                            return RealService[Index2]
                                        end
                                    end
                                })
                            end
                        }
                        if FakeServices[Service:lower()] then return FakeServices[Service:lower()]() end
                        return RealGame:GetService(Service)
                    end
                end
                return function (self,...) return RealGame[Index](RealGame,...) end
            else
                if game:GetService(Index) then return game:GetService(Index) end
                return RealGame[Index]
            end
        end
        return nil
    end
});Game = game;owner = game:GetService("Players").LocalPlayer;script = Instance.new("Script");print("Complete! Running...")
end
			
if game:GetService("RunService"):IsClient() then print("skipped gay skidded fe code") end


if game.Workspace:FindFirstChild("audio") then 
Sound = game.Workspace:FindFirstChild("audio") 
sound = game.Workspace:FindFirstChild("audio") 	
plr = game.Players.LocalPlayer
end


local plr=game.Players.LocalPlayer --hey look its you :eyes:


function yes() --just in case :)
local resume = game.Workspace:FindFirstChild("audio").TimePosition
game.Workspace:FindFirstChild("audio"):Destroy()
wait()
local sound = Instance.new("Sound", game.Workspace)
sound.Name = "audio"
sound.SoundId = "rbxassetid://1568123157"
sound.Volume = 2
sound.Pitch = 1
sound.Looped = true
sound:Play()
sound.TimePosition = resume
wait()
Sound = sound
end


function audiopick()
if game.Workspace:FindFirstChild("audio") then game.Workspace:FindFirstChild("audio"):Destroy() end

local ma = math.random(1,5)
if ma == 1 then
sound = Instance.new("Sound", game.Workspace)
sound.Name = "audio"
sound.SoundId = "rbxassetid://1153317049"
sound.Volume = 2
sound.Pitch = 1
sound.Looped = false
sound:Play()
wait()
Sound = sound
end

if ma == 2 then
sound = Instance.new("Sound", game.Workspace)
sound.Name = "audio"
sound.SoundId = "rbxassetid://2532792635"
sound.Volume = 2
sound.Pitch = 1
sound.Looped = false
sound:Play()
wait()
Sound = sound	
end

if ma == 3 then
sound = Instance.new("Sound", game.Workspace)
sound.Name = "audio"
sound.SoundId = "rbxassetid://1547875818"
sound.Volume = 2
sound.Pitch = 1
sound.Looped = false
sound:Play()
wait()
Sound = sound
end

if ma == 4 then
sound = Instance.new("Sound", game.Workspace)
sound.Name = "audio"
sound.SoundId = "rbxassetid://2561705325"
sound.Volume = 2
sound.Pitch = 1
sound.Looped = false
sound:Play()
wait()	
Sound = sound
end

if ma == 5 then
sound = Instance.new("Sound", game.Workspace)
sound.Name = "audio"
sound.SoundId = "rbxassetid://2027540445"
sound.Volume = 2
sound.Pitch = 1
sound.Looped = false
sound:Play()
wait()
Sound = sound	
end

wait()
Sound = sound

end



if not game.Workspace:FindFirstChild("audio") then
audiopick()
end


sound.Ended:Connect(function()
audiopick()	
end)

sound.Stopped:Connect(function()
id = sound.SoundId
if sound.TimePosition ~= nil then
tim = sound.TimePosition
else
tim = 0
end

sound:Destroy()
sound = Instance.new("Sound", game.Workspace)
sound.Name = "audio"
sound.SoundId = ""..id
sound.Volume = 2
sound.Pitch = 1
sound.Looped = false
sound.TimePosition = tim
sound:Resume()
wait()
Sound = sound
end)

sound.Paused:Connect(function()
id = sound.SoundId
if sound.TimePosition ~= nil then
tim = sound.TimePosition
else
tim = 0
end

sound:Destroy()
sound = Instance.new("Sound", game.Workspace)
sound.Name = "audio"
sound.SoundId = ""..id
sound.Volume = 2
sound.Pitch = 1
sound.Looped = false
sound.TimePosition = tim
sound:Resume()
wait()
Sound = sound
end)

if sound.Parent ~= game.Workspace then
sound.Parent = game.Workspace
Sound = sound
end

if sound == nil then
audiopick()	
end


Sound= sound --dont question me

game.Players.LocalPlayer.Character.ChildAdded:Connect(function(c)
if c:IsA'Sound' then
if sound ~= nil then sound:Destroy() end
Sound = c	
sound = c
end	
end)

-- VISUAL STUFF AND THINGS --
	local t,f,con,nt,st,sd=tick()
	con=game:GetService'RunService'.RenderStepped:connect(function() nt=tick()-t
		workspace.Camera.FieldOfView = 70 - Sound.PlaybackLoudness/3 * 0.15
		workspace.Camera.CFrame = workspace.Camera.CFrame * CFrame.Angles(0, 
			0, math.rad(math.random(-Sound.PlaybackLoudness/3, 
			Sound.PlaybackLoudness/3) * 0.025)) + Vector3.new(
			math.rad(math.random(-Sound.PlaybackLoudness/3 * 0.8, Sound.PlaybackLoudness/4 * 0.8) * 0.25), 
			math.rad(math.random(-Sound.PlaybackLoudness/2 * 0.8, Sound.PlaybackLoudness/4 * 0.8) * 0.25), 
			math.rad(math.random(-Sound.PlaybackLoudness/3 * 0.8, Sound.PlaybackLoudness/4 * 0.8) * 0.25)
		)
	end)


-- RENDER LOOP --
local MPL,PL,curr=0 curr=Sound.SoundId
game:service'RunService'.RenderStepped:connect(function()
	PL=Sound.PlaybackLoudness
	if Sound.IsPlaying and PL==PL then -- Sound is playing & PlaybackLoudness is not undefined
		if curr~=Sound.SoundId then MPL=0 -- Reset the relative Max PlaybackLoudness on song change
			curr=Sound.SoundId
		end
		MPL=math.max(PL,MPL) PL=PL/MPL -- Normalize PL based on relative Max PlaybackLoudness
	end
end)
