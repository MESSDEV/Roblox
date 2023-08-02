local textBox = script.Parent.TextBox
local Frame = script.Parent
local secretWord = "1254"
local colorNormal = Color3.new(1, 1, 1) 
local colorWrong = Color3.new(1, 0, 0) 
local colorCorrect = Color3.new(0, 1, 0)
textBox.ClearTextOnFocus = true
textBox.Text = ""
textBox.Font = Enum.Font.Code
textBox.PlaceholderText = "Enter the secret word"
textBox.BackgroundColor3 = colorNormal
local function onFocused()
	textBox.BackgroundColor3 = colorNormal
end
local function onFocusLost(enterPressed, inputObject)
	if enterPressed then
		local guess = textBox.Text
		if guess == secretWord then
			textBox.Text = "Correct answer"
			textBox.BackgroundColor3 = colorCorrect
		else
			textBox.Text = "Wrong answer"
			textBox.BackgroundColor3 = colorWrong
      wait(4)
			Frame.Visible = false
		end
else
		textBox.Text = ""
		textBox.BackgroundColor3 = colorNormal
	end
end
textBox.FocusLost:Connect(onFocusLost)
textBox.Focused:Connect(onFocused)
