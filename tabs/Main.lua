-- LessonFive

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This program plays music, displays two sprites (buttons), they grow when selected and when they are released a sound plays

-- variables
local aButton
local aButton2

-- Use this function to perform your initial setup
function setup()  
    supportedOrientations(LANDSCAPE_ANY)
    --displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    music("A Hero's Quest:Battle", true, 0.25)
    
    --sprite("Cargo Bot:Fast Button Active")
    aButton = Button("Cargo Bot:Fast Button Active", vec2(WIDTH/2, HEIGHT/2))
    aButton2 = Button("Cargo Bot:Fast Button Inactive", vec2(WIDTH/2, HEIGHT/2-150))
end

-- This function gets called once every frame
function touched(touch)
    
    -- local variables 
    aButton:touched(touch)
    aButton2:touched(touch)
    
    if( (aButton.selected == true) or
        (aButton2.selected == true) )then
        print("The button has been released")
        sound("A Hero's Quest:Arrow Shoot 2")
    end
end

-- This function gets called once every frame
function draw()
    
    -- This sets a dark background color 
    background(207, 201, 201, 255)
    aButton:draw()
    aButton2:draw()
end