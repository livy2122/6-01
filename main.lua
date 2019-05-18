

math.randomseed( 2222 )


local background = display.newImageRect( "sky.jpg", 2000, 2300 )
background.x = display.contentCenterX
background.y = display.contentCenterY
background.id = "button button" 

----seed



----text field


local answer = native.newTextField( display.contentCenterX, display.contentCenterY + 300, 700, 100 )
answer.id = "answer textField"

--------text will say "Guess the Number", the title of the game
local Title = display.newText( " Can You Guess The Number?" , 700, 200, native.systemFont, 80)
Title.id = "title text"
Title:setFillColor( 0, 0, 255)

-----------text will say the range of the numbers
local NumberPicker = display.newText( "Pick a number from 1 to 6" , 500, 300, native.systemFont, 80)
NumberPicker.id = "Number Picker"
NumberPicker:setFillColor( 0, 0, 255)

------------correct/incorrect text
local Correct = display.newText( " " , 1100, 700, native.systemFont, 80)
Correct.id = "Correct"
Correct:setFillColor( 0, 0, 255)
-------play again text

local guessAgain = display.newText( " " , 900, 700, native.systemFont, 80)
guessAgain.id = "guess again text"
guessAgain:setFillColor( 0, 0, 255)
------- correct answer text

local Correct2 = display.newText( " " , 400, 700, native.systemFont, 80)
Correct2.id = "correct answer text"
Correct2:setFillColor( 0, 0, 255)

--------button

local button = display.newImageRect( "yeet.png", 250, 300 )
button.x = display.contentCenterX
button.y = 900
button.id = "button button" 

-- makes the answer a number

local answerAsNumber = tonumber(answer.text)


local function buttonButtonTouch( event )
	-- will button and display correct or incorrect
	
	local answerAsNumber = tonumber(answer.text)

	local numberToGuess = math.random( 1, 6 )
	
	if answerAsNumber == numberToGuess then
    	Correct2.text = "Correct!"
    	guessAgain.text = "Try Again!"
    	Correct.text = ""
	else 
		Correct.text = ""
		Correct2.text = "Correct Answer ="..tostring(numberToGuess)
		guessAgain.text = "Try Again!"
	end 



end


button:addEventListener( 'touch' , buttonButtonTouch )




