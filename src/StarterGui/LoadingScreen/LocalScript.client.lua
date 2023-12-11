script.Parent.Parent.LoadingScreen.Enabled = true
script.Parent.Frame.SkipButton.MouseButton1Click:Connect(function()
	script.Parent.Frame.SkipButton:Destroy()
	wait(1)
	--script.Parent.Frame:TweenPosition(UDim2.new(0, 0,0.98, 0))
	script.Parent.Frame.Pattern.Transparency = .1
	wait(.05)
	script.Parent.Frame.Pattern.Transparency = .2
	wait(.05)
	script.Parent.Frame.Pattern.Transparency = .3
	wait(.05)
	script.Parent.Frame.Pattern.Transparency = .4
	wait(.05)
	script.Parent.Frame.Pattern.Transparency = .5
	wait(.05)
	script.Parent.Frame.Pattern.Transparency = .6
	wait(.05)
	script.Parent.Frame.Pattern.Transparency = .7
	wait(.05)
	script.Parent.Frame.Pattern.Transparency = .8
	wait(.05)
	script.Parent.Frame.Pattern.Transparency = .9
	wait(.05)
	script.Parent.Frame:Destroy()
	wait(3)
	script.Parent.Parent.LoadingScreen:Destroy()
end)

local timewaiting = math.random(7,15)
print(timewaiting)
wait(timewaiting)
--script.Parent.Frame:TweenPosition(UDim2.new(0, 0,5.98, 0))
script.Parent.Frame.Pattern.Transparency = .1
wait(.05)
script.Parent.Frame.Pattern.Transparency = .2
wait(.05)
script.Parent.Frame.Pattern.Transparency = .3
wait(.05)
script.Parent.Frame.Pattern.Transparency = .4
wait(.05)
script.Parent.Frame.Pattern.Transparency = .5
wait(.05)
script.Parent.Frame.Pattern.Transparency = .6
wait(.05)
script.Parent.Frame.Pattern.Transparency = .7
wait(.05)
script.Parent.Frame.Pattern.Transparency = .8
wait(.05)
script.Parent.Frame.Pattern.Transparency = .9
wait(.05)
script.Parent.Frame:Destroy()
wait(3)
script.Parent.Parent.LoadingScreen:Destroy()