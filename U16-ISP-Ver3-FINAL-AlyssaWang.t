% Alyssa Wang
% May 21,2018
% Mr.Rosen
% This program allows the user to create different and unique faces. You will be able to choose many of the features on a face and even the skin colours!

import GUI

forward procedure title
forward procedure mainMenu
forward procedure instructions
forward procedure display

%Declaration section
var button : int %This variable detects if the mouse button is clicked
var mousex : int %This detects the x coordinates of the mouse
var mousey : int %This detects the y coordinates of the mouse
var startBtn : int := 0 %This is the start button in the main menu
var helpBtn : int %This is the instructions button in the main menu
var menuBtn : int %This is the button to go to the main menu
var exitBtn : int  %This is the exit button in the main menu
var mainWin := Window.Open ("position:260;550, graphics:1000;675") %This sets the main screen up

%this is for the music
process gameMusic
    Music.PlayFile ("music.mp3")
end gameMusic

%This is the title
body procedure title
    cls
    var font1 : int := Font.New ("Arial:20:Bold")
    Font.Draw ("Build a Face!", 420, 630, font1, black)
end title

%This procedure contain the instructions on how to use this program
body procedure instructions
    title
    GUI.Hide (startBtn)
    GUI.Hide (helpBtn)
    GUI.Hide (exitBtn)
    locate (6, 58)
    put "Instructions"
    locate (9, 1)
    put "Click on any button and that will add/change features to the face. You must select a face shape to use other options. Your"
    put "design will be displayed in the middle of the screen."
    GUI.Show (menuBtn) % This button allows the user to go to the main menu
end instructions

%This procedure creates the introduction which includes an animation of eyes and eyebrows
procedure introduction
    fork gameMusic
    setscreen ("offscreenonly")
    title
    for x : 0 .. 900
	%erase
	drawfillbox (-702 + x, 194, -101 + x, 453, 0)
	%right eye/eyebrow
	drawfillarc (-581 + x, 195, 120, 146, 0, 180, 0) %white part of eye
	drawarc (-581 + x, 195, 120, 146, 0, 180, black) %outline
	drawline (-700 + x, 195, -460 + x, 195, black) %bottom outline
	drawfilloval (-581 + x, 268, 74, 74, 137) %iris
	drawfilloval (-581 + x, 268, 20, 20, black) %pupil
	drawarc (-581 + x, 395, 118, 58, 0, 180, 137) %eyebrow
	%left eye/eyebrow
	drawfillarc (-220 + x, 195, 120, 146, 0, 180, 0) %white part of eye
	drawarc (-220 + x, 195, 120, 146, 0, 180, black) %outline
	drawline (-340 + x, 195, -100 + x, 195, black) %bottom outline
	drawfilloval (-220 + x, 268, 74, 74, 137) %iris
	drawfilloval (-220 + x, 268, 20, 20, black) %pupil
	drawarc (-220 + x, 395, 118, 58, 0, 180, 137) %eyebrow
	delay (10)
	View.Update
    end for
    for x : 0 .. 40
	%erase
	drawfillbox (201, 394 + x, 798, 453 + x, 0)
	%right eye/eyebrow
	drawfillarc (319, 195, 120, 146, 0, 180, 0) %white part of eye
	drawarc (319, 195, 120, 146, 0, 180, black) %outline
	drawline (200, 195, 440, 195, black) %bottom outline
	drawfilloval (319, 268, 74, 74, 137) %iris
	drawfilloval (319, 268, 20, 20, black) %pupil
	drawarc (319, 395 + x, 118, 58, 0, 180, 137) %eyebrow
	%left eye/eyebrow
	drawfillarc (680, 195, 120, 146, 0, 180, 0) %white part of eye
	drawarc (680, 195, 120, 146, 0, 180, black) %outline
	drawline (560, 195, 800, 195, black) %bottom outline
	drawfilloval (680, 268, 74, 74, 137) %iris
	drawfilloval (680, 268, 20, 20, black) %pupil
	drawarc (680, 395 + x, 118, 58, 0, 180, 137) %eyebrow
	delay (20)
	View.Update
    end for
    for x : 0 .. 40
	%erase
	drawfillbox (201, 435 - x, 798, 494 - x, 0)
	%right eye/eyebrow
	drawfillarc (319, 195, 120, 146, 0, 180, 0) %white part of eye
	drawarc (319, 195, 120, 146, 0, 180, black) %outline
	drawline (200, 195, 440, 195, black) %bottom outline
	drawfilloval (319, 268, 74, 74, 137) %iris
	drawfilloval (319, 268, 20, 20, black) %pupil
	drawarc (319, 435 - x, 118, 58, 0, 180, 137) %eyebrow
	%left eye/eyebrow
	drawfillarc (680, 195, 120, 146, 0, 180, 0) %white part of eye
	drawarc (680, 195, 120, 146, 0, 180, black) %outline
	drawline (560, 195, 800, 195, black) %bottom outline
	drawfilloval (680, 268, 74, 74, 137) %iris
	drawfilloval (680, 268, 20, 20, black) %pupil
	drawarc (680, 435 - x, 118, 58, 0, 180, 137) %eyebrow
	delay (20)
	View.Update
    end for
    for x : 0 .. 850
	%erase
	drawfillbox (198 + x, 194, 799 + x, 453, 0)
	%right eye/eyebrow
	drawfillarc (319 + x, 195, 120, 146, 0, 180, 0) %white part of eye
	drawarc (319 + x, 195, 120, 146, 0, 180, black) %outline
	drawline (200 + x, 195, 440 + x, 195, black) %bottom outline
	drawfilloval (319 + x, 268, 74, 74, 137) %iris
	drawfilloval (319 + x, 268, 20, 20, black) %pupil
	drawarc (319 + x, 395, 118, 58, 0, 180, 137) %eyebrow
	%left eye/eyebrow
	drawfillarc (680 + x, 195, 120, 146, 0, 180, 0) %white part of eye
	drawarc (680 + x, 195, 120, 146, 0, 180, black) %outline
	drawline (560 + x, 195, 800 + x, 195, black) %bottom outline
	drawfilloval (680 + x, 268, 74, 74, 137) %iris
	drawfilloval (680 + x, 268, 20, 20, black) %pupil
	drawarc (680 + x, 395, 118, 58, 0, 180, 137) %eyebrow
	delay (10)
	View.Update
    end for
    setscreen ("nooffscreenonly")
    locate (20, 20)
    put "Welcome to Build a Face! This program will allow you to create a face of your very own!" ..
    menuBtn := GUI.CreateButton (470, 100, 0, "Main Menu", mainMenu)     % This button will allow you to go to the main menu
end introduction

%This is the main menu. It has options to quit, play, or to see the instructions.
body procedure mainMenu
    fork gameMusic
    title
    %fork gameMusic
    GUI.Hide (menuBtn)
    startBtn := GUI.CreateButton (467, 400, 0, "Start", display) %This is the start button in the main menu
    helpBtn := GUI.CreateButton (450, 350, 0, "Instructions", instructions)     % This is the instructions button
    exitBtn := GUI.CreateButtonFull (472, 300, 0, "Exit", GUI.Quit, 0, '^Q', false)     %This is the quit button in the main menu
    GUI.Show (startBtn)
    GUI.Show (helpBtn)
    GUI.Show (exitBtn)
end mainMenu

%This procedure contains the actual game/face builder. It displays what the user has inputed.
body procedure display
    fork gameMusic
    var font2 := Font.New ("serif:10")
    var font3 := Font.New ("serif:16")
    var skinClr : int := 90 %This will save the skin color so it appears even when you add more features. The initial value is set to 90 because that will be the starting skin color
    var prevShape : int := 0 %This saves the previous design of face shape so that it still appears on the screen even after you add other features
    var prevHair : int := 0 %This saves the previous design of the hair so that it still appears on the screen even after you add other features
    var prevNose : int := 0 %This saves the previous design of the nose so that it still appears on the screen even after you add other features
    var prevEar : int := 0  %This saves the previous design of ears so that it still appears on the screen even after you add other features
    var prevEye : int := 0  %This saves the previous design of eyes so that it still appears on the screen even after you add other features
    var prevMth : int := 0  %This saves the previous design of mouth so that it still appears on the screen even after you add other features
    var prevBrow : int := 0 %This saves the previous design of eyebrow so that it still appears on the screen even after you add other features
    var faceShape : boolean := false
    title
    GUI.Hide (startBtn)
    GUI.Hide (helpBtn)
    GUI.Hide (exitBtn)
    %Face display area
    drawbox (237, 138, 762, 613, 7) %This is the outline for the face display area
    Text.ColorBack (0)
    locatexy (240, 375)
    put "You must select a face shape in order to select the other options" .. %This is the message that is in the face display area when a face shape is not selected.
    % Smiley faces
    % Left smiley face
    drawfilloval (118, 225, 70, 70, 68) % yellow base
    drawoval (118, 225, 70, 70, 7) %outline
    drawfilloval (89, 240, 10, 10, 7) %left eye
    drawfilloval (147, 240, 10, 10, 7) %right eye
    drawarc (118, 200, 30, 15, 180, 0, 7) % mouth
    %Right smiley face
    drawfilloval (875, 225, 70, 70, 68) %yellow base
    drawoval (875, 225, 70, 70, 7)
    drawfilloval (846, 240, 10, 10, 7)
    drawfilloval (904, 240, 10, 10, 7)
    drawarc (875, 200, 30, 15, 180, 0, 7)
    %These will draw the buttons that the user can press to design their face.
    %----------------------------------%
    %This draws the buttons for the hair.
    %This is the button for long brown hair
    drawfillbox (18, 10, 98, 40, 68)
    drawbox (18, 10, 98, 40, black)
    Font.Draw ("Hair :", 25, 28, font2, 7)
    Font.Draw ("Long Brown", 25, 15, font2, 7)
    %This is the button for short brown hair
    drawfillbox (116, 10, 196, 40, 68)
    drawbox (116, 10, 196, 40, black)
    Font.Draw ("Hair :", 123, 28, font2, 7)
    Font.Draw ("Short Brown", 123, 15, font2, 7)
    %This is the button for long black hair
    drawfillbox (214, 10, 294, 40, 68)
    drawbox (214, 10, 294, 40, black)
    Font.Draw ("Hair :", 221, 28, font2, 7)
    Font.Draw ("Long Black", 221, 15, font2, 7)
    %This is the button for short black hair
    drawfillbox (312, 10, 392, 40, 68)
    drawbox (312, 10, 392, 40, black)
    Font.Draw ("Hair :", 319, 28, font2, 7)
    Font.Draw ("Short Black", 319, 15, font2, 7)
    %This is the button for blond hair in space buns
    drawfillbox (410, 10, 490, 40, 68)
    drawbox (410, 10, 490, 40, black)
    Font.Draw ("Hair :", 417, 28, font2, 7)
    Font.Draw ("Buns Blond", 417, 15, font2, 7)
    %-------------------------------%
    %This draws the buttons for the ear section
    %This is the button for small ears
    drawfillbox (508, 10, 588, 40, 103)
    drawbox (508, 10, 588, 40, black)
    Font.Draw ("Ears :", 515, 28, font2, 7)
    Font.Draw ("Small Ears", 515, 15, font2, 7)
    %This is the button for medium ears
    drawfillbox (606, 10, 686, 40, 103)
    drawbox (606, 10, 686, 40, black)
    Font.Draw ("Ears :", 613, 28, font2, 7)
    Font.Draw ("Medium Ears", 613, 15, font2, 7)
    %This is the button for long ears
    drawfillbox (704, 10, 784, 40, 103)
    drawbox (704, 10, 784, 40, black)
    Font.Draw ("Ears :", 711, 28, font2, 7)
    Font.Draw ("Long Ears", 711, 15, font2, 7)
    %This is the button for pointed ears
    drawfillbox (802, 10, 882, 40, 103)
    drawbox (802, 10, 882, 40, black)
    Font.Draw ("Ears :", 809, 28, font2, 7)
    Font.Draw ("Pointed Ears", 809, 15, font2, 7)
    %This is the button for attached lobe ears
    drawfillbox (900, 10, 986, 40, 103)
    drawbox (900, 10, 986, 40, black)
    Font.Draw ("Ears :", 901, 28, font2, 7)
    Font.Draw ("Attached Lobes", 901, 15, font2, 7)
    %-------------------------------%
    %This draws the buttons for the nose section
    %This is the button for a circle nose
    drawfillbox (18, 50, 98, 80, 96)
    drawbox (18, 50, 98, 80, black)
    Font.Draw ("Nose :", 25, 68, font2, 7)
    Font.Draw ("Circle", 25, 55, font2, 7)
    %This is the button for a oval nose
    drawfillbox (116, 50, 196, 80, 96)
    drawbox (116, 50, 196, 80, black)
    Font.Draw ("Nose :", 123, 68, font2, 7)
    Font.Draw ("Oval", 123, 55, font2, 7)
    %This is the button for a triangle nose
    drawfillbox (214, 50, 294, 80, 96)
    drawbox (214, 50, 294, 80, black)
    Font.Draw ("Nose :", 221, 68, font2, 7)
    Font.Draw ("Triangle", 221, 55, font2, 7)
    %This is the button for a rectangle nose
    drawfillbox (312, 50, 392, 80, 96)
    drawbox (312, 50, 392, 80, black)
    Font.Draw ("Nose :", 319, 68, font2, 7)
    Font.Draw ("Rectangle", 319, 55, font2, 7)
    %This is the button for a nose that is outlined
    drawfillbox (410, 50, 490, 80, 96)
    drawbox (410, 50, 490, 80, black)
    Font.Draw ("Nose :", 417, 68, font2, 7)
    Font.Draw ("Outline", 417, 55, font2, 7)
    %-------------------------------%
    %This draws the buttons for the mouth
    %This is the button for the big mouth
    drawfillbox (508, 50, 588, 80, 87)
    drawbox (508, 50, 588, 80, black)
    Font.Draw ("Mouth :", 515, 68, font2, 7)
    Font.Draw ("Big", 515, 55, font2, 7)
    %This is the button for the thin mouth
    drawfillbox (606, 50, 686, 80, 87)
    drawbox (606, 50, 686, 80, black)
    Font.Draw ("Mouth :", 613, 68, font2, 7)
    Font.Draw ("Thin", 613, 55, font2, 7)
    %This is the button for the mouth that smiles
    drawfillbox (704, 50, 784, 80, 87)
    drawbox (704, 50, 784, 80, black)
    Font.Draw ("Mouth :", 711, 68, font2, 7)
    Font.Draw ("Smile", 711, 55, font2, 7)
    %This is the button for the mouth that frowns
    drawfillbox (802, 50, 882, 80, 87)
    drawbox (802, 50, 882, 80, black)
    Font.Draw ("Mouth :", 809, 68, font2, 7)
    Font.Draw ("Frown", 809, 55, font2, 7)
    %This is the button for the shocked mouth
    drawfillbox (900, 50, 986, 80, 87)
    drawbox (900, 50, 986, 80, black)
    Font.Draw ("Mouth :", 907, 68, font2, 7)
    Font.Draw ("Shocked", 907, 55, font2, 7)
    %----------------------------------%
    %This draws the buttons for the eyes.
    %This is the button for the blue wide eyes
    drawfillbox (18, 90, 98, 120, 82)
    drawbox (18, 90, 98, 120, black)
    Font.Draw ("Eyes :", 25, 108, font2, 7)
    Font.Draw ("Blue Wide", 25, 95, font2, 7)
    %This is the button for the brown narrow eyes
    drawfillbox (116, 90, 196, 120, 82)
    drawbox (116, 90, 196, 120, black)
    Font.Draw ("Eyes :", 118, 108, font2, 7)
    Font.Draw ("Brown Narrow", 118, 95, font2, 7)
    %This is the button for the brown wide eyes
    drawfillbox (214, 90, 294, 120, 82)
    drawbox (214, 90, 294, 120, black)
    Font.Draw ("Eyes :", 221, 108, font2, 7)
    Font.Draw ("Brown Wide", 221, 95, font2, 7)
    %This is the button for the green wide eyes
    drawfillbox (312, 90, 392, 120, 82)
    drawbox (312, 90, 392, 120, black)
    Font.Draw ("Eyes :", 319, 108, font2, 7)
    Font.Draw ("Green Wide", 319, 95, font2, 7)
    %This is the button for the hazel narrow eyes
    drawfillbox (410, 90, 490, 120, 82)
    drawbox (410, 90, 490, 120, black)
    Font.Draw ("Eyes :", 415, 108, font2, 7)
    Font.Draw ("Hazel Narrow", 415, 95, font2, 7)
    %-------------------------------%
    %This draws the buttons for the eyebrows
    %This is the button for the thick eyebrows
    drawfillbox (508, 90, 588, 120, 43)
    drawbox (508, 90, 588, 120, black)
    Font.Draw ("Eyebrows :", 515, 108, font2, 7)
    Font.Draw ("Thick", 515, 95, font2, 7)
    %This is the button for the thin eyebrows
    drawfillbox (606, 90, 686, 120, 43)
    drawbox (606, 90, 686, 120, black)
    Font.Draw ("Eyebrows :", 613, 108, font2, 7)
    Font.Draw ("Thin", 613, 95, font2, 7)
    %This is the button for the triangle eyebrows
    drawfillbox (704, 90, 784, 120, 43)
    drawbox (704, 90, 784, 120, black)
    Font.Draw ("Eyebrows :", 711, 108, font2, 7)
    Font.Draw ("Triangle", 711, 95, font2, 7)
    %This is the button for the tilted up eyebrows
    drawfillbox (802, 90, 882, 120, 43)
    drawbox (802, 90, 882, 120, black)
    Font.Draw ("Eyebrows :", 809, 108, font2, 7)
    Font.Draw ("Tilted Up", 809, 95, font2, 7)
    %This is the button for the tilted down eyebrows
    drawfillbox (900, 90, 986, 120, 43)
    drawbox (900, 90, 986, 120, black)
    Font.Draw ("Eyebrows :", 907, 108, font2, 7)
    Font.Draw ("Tilted Down", 907, 95, font2, 7)
    %-------------------------------%
    %This draws the buttons for the face shapes
    %This is for the round face shape
    drawfillbox (78, 530, 158, 570, 101)
    drawbox (78, 530, 158, 570, black)
    Font.Draw ("Face Shape :", 85, 552, font2, 7)
    Font.Draw ("Round", 85, 538, font2, 7)
    %This is the button for the oval face shape
    drawfillbox (78, 480, 158, 520, 101)
    drawbox (78, 480, 158, 520, black)
    Font.Draw ("Face Shape :", 85, 502, font2, 7)
    Font.Draw ("Oval", 85, 488, font2, 7)
    %This is the button for the distinct face shape(face with very sharp bones such as the jawline ect.)
    drawfillbox (78, 430, 158, 470, 101)
    drawbox (78, 430, 158, 470, black)
    Font.Draw ("Face Shape :", 85, 452, font2, 7)
    Font.Draw ("Distinct", 85, 438, font2, 7)
    %This is the button for the egg face shape
    drawfillbox (78, 380, 158, 420, 101)
    drawbox (78, 380, 158, 420, black)
    Font.Draw ("Face Shape :", 85, 402, font2, 7)
    Font.Draw ("Egg", 85, 388, font2, 7)
    %This is the button for the round-oval face
    drawfillbox (78, 330, 158, 370, 101)
    drawbox (78, 330, 158, 370, black)
    Font.Draw ("Face Shape :", 85, 352, font2, 7)
    Font.Draw ("Round-Oval", 85, 338, font2, 7)
    %-------------------------------%
    %This draws the buttons for the skin colours
    %This is for the header that says "skin colours"
    drawfillbox (800, 520, 950, 570, 84)
    drawbox (800, 520, 950, 570, 7)
    Font.Draw ("Skin Colours", 820, 540, font3, 7)
    %These are the boxes with the actual skin colours
    %Top row
    drawfillbox (800, 470, 850, 520, 90) %left
    drawbox (800, 470, 850, 520, 7) %left outline
    drawfillbox (850, 470, 900, 520, 91) %middle
    drawbox (850, 470, 900, 520, 7) %middle outline
    drawfillbox (900, 470, 950, 520, 67) %right
    drawbox (900, 470, 950, 520, 7) %right outline
    %Middle row
    drawfillbox (800, 420, 850, 470, 92) %left
    drawbox (800, 420, 850, 470, 7) %left outline
    drawfillbox (850, 420, 900, 470, 89) %middle
    drawbox (850, 420, 900, 470, 7) %middle outline
    drawfillbox (900, 420, 950, 470, 161) %right
    drawbox (900, 420, 950, 470, 7) %right outline
    %Bottom row
    drawfillbox (800, 370, 850, 420, 138) %left
    drawbox (800, 370, 850, 420, 7) %left outline
    drawfillbox (850, 370, 900, 420, 114) %middle
    drawbox (850, 370, 900, 420, 7) %middle outline
    drawfillbox (900, 370, 950, 420, 137) %right
    drawbox (900, 370, 950, 420, 7) %right outline
    %-------------------------------%
    %This creates the button that will go back to the main menu
    drawfillbox (58, 600, 178, 650, 29)
    drawbox (58, 600, 178, 650, 7)
    Font.Draw ("Main Menu", 70, 620, font3, 7)
    %-------------------------------%
    %This is the reset button
    drawfillbox (815, 600, 935, 650, 29)
    drawbox (815, 600, 935, 650, 7)
    Font.Draw ("Reset", 851, 620, font3, 7)
    %..............................%
    loop
	View.Update
	%This detects where the mouse is
	mousewhere (mousex, mousey, button)
	if button = 1 then
	    %--------------------------FACE SHAPES-----------------------------%
	    %The face shapes are the base of the face. It is drawn first in every face.
	    %To change the face, the face display area is cleared and then the new face is drawn with the facial features on top.
	    if mousex >= 78 and mousex <= 158 and mousey >= 530 and mousey <= 570 then %This is the face shape box #1
		if prevShape ~= 1 then
		    %Erase
		    drawfillbox (239, 139, 761, 612, 0)
		    %Round Face Shape
		    drawfilloval (499, 370, 115, 115, skinClr)
		    drawoval (499, 370, 115, 115, 7)
		    %Draws the previous ear shape
		    %draws the small ears
		    if prevEar = 1 then
			drawfillarc (613, 370, 20, 20, 270, 90, skinClr) %right ear
			drawarc (613, 370, 20, 20, 273, 95, 7) %outline
			drawfillarc (388, 370, 20, 20, 90, 270, skinClr) %left ear
			drawarc (388, 370, 20, 20, 90, 273, 7) %outline
			%draws the medium sized ears
		    elsif prevEar = 2 then
			drawfillarc (611, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (611, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (387, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (388, 370, 20, 30, 90, 273, 7) %outline
			%this draws the long ear
		    elsif prevEar = 3 then
			drawfillarc (607, 370, 20, 40, 270, 90, skinClr) %right ear
			drawarc (607, 370, 20, 40, 273, 95, 7) %outline
			drawfillarc (392, 370, 20, 40, 90, 270, skinClr) %left ear
			drawarc (392, 370, 20, 40, 90, 273, 7) %outline
			%this draws the pointed ear
		    elsif prevEar = 4 then
			drawfillarc (611, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (611, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (389, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (389, 370, 20, 30, 90, 273, 7) %outline
			%point
			for x : 0 .. 30
			    drawline (610, 418, 595 + x, 395, skinClr) %right ear
			    drawline (390, 417, 375 + x, 394, skinClr) %left ear
			end for
			drawline (610, 418, 625, 393, 7) %outline right of right ear
			drawline (610, 418, 605, 410, 7) %small right point outline of right ear
			drawline (390, 418, 375, 392, 7) %outline left of left ear
			drawline (390, 417, 395, 409, 7) %small left point outline of left ear
		    elsif prevEar = 5 then
			drawfillarc (610, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (610, 370, 20, 30, 273, 95, 7) %outline of right ear
			drawfillarc (389, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (389, 370, 20, 30, 90, 273, 7) %outline of left ear
		    end if
		    %Draws the previous hair shape
		    %this draws the long brown hair
		    if prevHair = 1 then
			drawfillarc (500, 450, 120, 50, 340, 200, 137) %scalp area
			drawfillbox (380, 200, 420, 450, 137) %left hair
			drawfillbox (580, 200, 620, 450, 137) %right hair
			drawarc (500, 450, 120, 50, 360, 185, 7) %scalp outline
			drawline (380, 200, 380, 450, 7) %left outline
			drawline (380, 200, 420, 200, 7) %left bottom outline
			drawline (420, 200, 420, 440, 7) %left inside outline
			drawline (420, 438, 500, 450, 7) %left top outline
			drawline (500, 450, 580, 438, 7) %left top outline
			drawline (580, 200, 580, 440, 7) %right inside outline
			drawline (580, 200, 620, 200, 7) %right bottom outline
			drawline (620, 200, 620, 450, 7) %right outline
			%this draws the short brown hair
		    elsif prevHair = 2 then
			drawfillbox (412, 440, 588, 510, 137)
			drawbox (412, 440, 588, 510, 7)
			%this draws the long black hair
		    elsif prevHair = 3 then
			drawfillarc (500, 430, 100, 80, 0, 180, 7) %scalp area
			drawfilloval (390, 325, 20, 125, 7) %left pigtail
			drawfilloval (610, 325, 20, 125, 7) %right pigtail
			Draw.ThickLine (398, 429, 398, 451, 10, 7) %left hair tie
			Draw.ThickLine (601, 429, 603, 451, 10, 7) %right hair tie
			Draw.ThickLine (398, 430, 398, 450, 8, 101) %left hair tie
			Draw.ThickLine (603, 430, 603, 450, 8, 101) %right hair tie
			%this draws the short black hair
		    elsif prevHair = 4 then
			drawfillarc (500, 430, 95, 80, 0, 180, 7)
			%this draws the blond hair that is in space buns
		    elsif prevHair = 5 then
			drawfillarc (500, 430, 95, 80, 0, 180, 139) %scalp area
			drawfilloval (399, 500, 40, 40, 139) %left bun
			drawfilloval (601, 500, 40, 40, 139) %right bun
			drawarc (500, 430, 95, 80, 0, 181, 7) %scalp outline
			drawline (405, 430, 595, 430, 7) %bottom of bang outline
			drawarc (399, 500, 40, 40, 343, 290, 7) %outline for left bun
			drawarc (601, 500, 40, 40, 248, 197, 7) %outline of the right bun
		    end if
		    %Draws the previous nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottome outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottome outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottome outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		end if
		faceShape := true
		prevShape := 1
		%this is the oval face
	    elsif mousex >= 78 and mousex <= 158 and mousey >= 480 and mousey <= 520 then %This is the face shape box #2
		if prevShape ~= 2 then
		    %Erase
		    drawfillbox (239, 139, 761, 612, 0)
		    %FaceShapes
		    drawfilloval (499, 370, 100, 130, skinClr)
		    drawoval (499, 370, 100, 130, 7)
		    %Draws the previous ear shape
		    %this draws the small ear
		    if prevEar = 1 then
			drawfillarc (599, 370, 20, 20, 270, 90, skinClr) %right ear
			drawarc (599, 370, 20, 20, 273, 95, 7) %outline
			drawfillarc (399, 370, 20, 20, 90, 270, skinClr) %left ear
			drawarc (400, 370, 20, 20, 90, 273, 7) %outline
			%draws the medium sized ears
		    elsif prevEar = 2 then
			drawfillarc (598, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (597, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (400, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (402, 370, 20, 30, 90, 273, 7) %outline
			%this draws the long ear
		    elsif prevEar = 3 then
			drawfillarc (595, 370, 20, 40, 270, 90, skinClr) %right ear
			drawarc (594, 370, 20, 40, 273, 95, 7) %outline
			drawfillarc (403, 370, 20, 40, 90, 270, skinClr) %left ear
			drawarc (404, 370, 20, 40, 90, 273, 7) %outline
			%this draws the pointed ear
		    elsif prevEar = 4 then
			drawfillarc (597, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (597, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (402, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (402, 370, 20, 30, 90, 273, 7) %outline
			%point
			for x : 0 .. 30
			    drawline (596, 418, 581 + x, 395, skinClr) %right ear
			    drawline (403, 417, 388 + x, 394, skinClr) %left ear
			end for
			drawline (596, 418, 611, 393, 7) %outline right of right ear
			drawline (596, 418, 591, 410, 7) %small right point outline of right ear
			drawline (403, 418, 388, 392, 7) %outline left of left ear
			drawline (403, 417, 408, 409, 7) %small left point outline of left ear
			drawfill (499, 370, skinClr, 7)
		    elsif prevEar = 5 then
			drawfillarc (595, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (595, 370, 20, 30, 273, 95, 7) %outline of right ear
			drawfillarc (404, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (404, 370, 20, 30, 90, 273, 7) %outline of left ear
		    end if
		    %Draws the previous hair shape
		    %this draws the long brown hair
		    if prevHair = 1 then
			drawfillarc (500, 450, 120, 50, 340, 200, 137) %scalp area
			drawfillbox (380, 200, 420, 450, 137) %left hair
			drawfillbox (580, 200, 620, 450, 137) %right hair
			drawarc (500, 450, 120, 50, 360, 185, 7) %scalp outline
			drawline (380, 200, 380, 450, 7) %left outline
			drawline (380, 200, 420, 200, 7) %left bottom outline
			drawline (420, 200, 420, 440, 7) %left inside outline
			drawline (420, 438, 500, 450, 7) %left top outline
			drawline (500, 450, 580, 438, 7) %left top outline
			drawline (580, 200, 580, 440, 7) %right inside outline
			drawline (580, 200, 620, 200, 7) %right bottom outline
			drawline (620, 200, 620, 450, 7) %right outline
			%this draws the short brown hair
		    elsif prevHair = 2 then
			drawfillbox (412, 440, 588, 510, 137)
			drawbox (412, 440, 588, 510, 7)
			%this draws the long black hair
		    elsif prevHair = 3 then
			drawfillarc (500, 430, 100, 80, 0, 180, 7) %scalp area
			drawfilloval (390, 325, 20, 125, 7) %left pigtail
			drawfilloval (610, 325, 20, 125, 7) %right pigtail
			Draw.ThickLine (398, 429, 398, 451, 10, 7) %left hair tie
			Draw.ThickLine (601, 429, 603, 451, 10, 7) %right hair tie
			Draw.ThickLine (398, 430, 398, 450, 8, 101) %left hair tie
			Draw.ThickLine (603, 430, 603, 450, 8, 101) %right hair tie
			%this draws the short black hair
		    elsif prevHair = 4 then
			drawfillarc (500, 430, 95, 80, 0, 180, 7)
			%this draws the blond hair that is in space buns
		    elsif prevHair = 5 then
			drawfillarc (500, 430, 95, 80, 0, 180, 139) %scalp area
			drawfilloval (399, 500, 40, 40, 139) %left bun
			drawfilloval (601, 500, 40, 40, 139) %right bun
			drawarc (500, 430, 95, 80, 0, 181, 7) %scalp outline
			drawline (405, 430, 595, 430, 7) %bottom of bang outline
			drawarc (399, 500, 40, 40, 343, 290, 7) %outline for left bun
			drawarc (601, 500, 40, 40, 248, 197, 7) %outline of the right bun
		    end if
		    %Draws the previous nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottome outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottome outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottome outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		end if
		faceShape := true
		prevShape := 2
		%this is the distinct face shape
	    elsif mousex >= 78 and mousex <= 158 and mousey >= 430 and mousey <= 470 then %This is the face shape box #3
		if prevShape ~= 3 then
		    %Erase
		    drawfillbox (239, 139, 761, 612, 0)
		    %FaceShapes
		    drawfillbox (415, 290, 587, 445, skinClr) %middle of face
		    drawline (415, 290, 415, 445, 7) %left straight outline
		    drawline (587, 290, 587, 445, 7) %right straight outline
		    drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
		    drawarc (501, 445, 86, 50, 0, 180, 7) %forehead outline
		    for x : 0 .. 172
			drawline (501, 240, 415 + x, 290, skinClr) %chin
		    end for
		    drawline (501, 240, 415, 290, 7) %outline left of chin
		    drawline (501, 240, 587, 290, 7) %outline of right chin
		    Draw.Dot (415, 446, 7) %outline
		    Draw.Dot (415, 447, 7) %outline
		    Draw.Dot (415, 446, 7) %outline
		    Draw.Dot (415, 445, 7) %outline
		    %Draws the previous ear shape
		    %draws the small ears
		    if prevEar = 1 then
			drawfillarc (585, 370, 20, 20, 270, 90, skinClr) %right ear
			drawarc (585, 370, 20, 20, 273, 95, 7) %outline
			drawfillarc (418, 370, 20, 20, 90, 270, skinClr) %left ear
			drawarc (418, 370, 20, 20, 90, 273, 7) %outline
			%draws the medium sized ears
		    elsif prevEar = 2 then
			drawfillarc (585, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (585, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (418, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (418, 370, 20, 30, 90, 273, 7) %outline
			%this draws the long ear
		    elsif prevEar = 3 then
			drawfillarc (585, 370, 20, 40, 270, 90, skinClr) %right ear
			drawarc (585, 370, 20, 40, 273, 95, 7) %outline
			drawfillarc (418, 370, 20, 40, 90, 270, skinClr) %left ear
			drawarc (418, 370, 20, 40, 90, 273, 7) %outline
			%this draws the pointed ear
		    elsif prevEar = 4 then
			drawfillarc (587, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (587, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (416, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (416, 370, 20, 30, 90, 273, 7) %outline
			%point
			for x : 0 .. 30
			    drawline (590, 418, 571 + x, 395, skinClr) %right ear
			    drawline (411, 417, 400 + x, 394, skinClr) %left ear
			end for
			drawline (590, 418, 601, 393, 7) %outline right of right ear
			drawline (590, 418, 585, 410, 7) %small right point outline of right ear
			drawline (410, 418, 401, 392, 7) %outline left of left ear
			drawline (410, 417, 416, 409, 7) %small left point outline of left ear
		    elsif prevEar = 5 then
			drawfillarc (587, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (587, 370, 20, 30, 273, 95, 7) %outline of right ear
			drawfillarc (416, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (416, 370, 20, 30, 90, 273, 7) %outline of left ear
		    end if
		    %Draws the previous hair shape
		    %this draws the long brown hair
		    if prevHair = 1 then
			drawfillarc (500, 450, 120, 50, 340, 200, 137) %scalp area
			drawfillbox (380, 200, 420, 450, 137) %left hair
			drawfillbox (580, 200, 620, 450, 137) %right hair
			drawarc (500, 450, 120, 50, 360, 185, 7) %scalp outline
			drawline (380, 200, 380, 450, 7) %left outline
			drawline (380, 200, 420, 200, 7) %left bottom outline
			drawline (420, 200, 420, 440, 7) %left inside outline
			drawline (420, 438, 500, 450, 7) %left top outline
			drawline (500, 450, 580, 438, 7) %left top outline
			drawline (580, 200, 580, 440, 7) %right inside outline
			drawline (580, 200, 620, 200, 7) %right bottom outline
			drawline (620, 200, 620, 450, 7) %right outline
			%this draws the short brown hair
		    elsif prevHair = 2 then
			drawfillbox (412, 440, 588, 510, 137)
			drawbox (412, 440, 588, 510, 7)
			%this draws the long black hair
		    elsif prevHair = 3 then
			drawfillarc (500, 430, 100, 80, 0, 180, 7) %scalp area
			drawfilloval (390, 325, 20, 125, 7) %left pigtail
			drawfilloval (610, 325, 20, 125, 7) %right pigtail
			Draw.ThickLine (398, 429, 398, 451, 10, 7) %left hair tie
			Draw.ThickLine (601, 429, 603, 451, 10, 7) %right hair tie
			Draw.ThickLine (398, 430, 398, 450, 8, 101) %left hair tie
			Draw.ThickLine (603, 430, 603, 450, 8, 101) %right hair tie
			%this draws the short black hair
		    elsif prevHair = 4 then
			drawfillarc (500, 430, 95, 80, 0, 180, 7)
			%this draws the blond hair that is in space buns
		    elsif prevHair = 5 then
			drawfillarc (500, 430, 95, 80, 0, 180, 139) %scalp area
			drawfilloval (399, 500, 40, 40, 139) %left bun
			drawfilloval (601, 500, 40, 40, 139) %right bun
			drawarc (500, 430, 95, 80, 0, 181, 7) %scalp outline
			drawline (405, 430, 595, 430, 7) %bottom of bang outline
			drawarc (399, 500, 40, 40, 343, 290, 7) %outline for left bun
			drawarc (601, 500, 40, 40, 248, 197, 7) %outline of the right bun
		    end if
		    %Draws the previous nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottome outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottome outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		end if
		faceShape := true
		prevShape := 3
		%this is for the egg shape face
	    elsif mousex >= 78 and mousex <= 158 and mousey >= 380 and mousey <= 420 then     %This is the face shape box #4
		if prevShape ~= 4 then
		    %Erase
		    drawfillbox (239, 139, 761, 612, 0)
		    %FaceShapes
		    drawfillbox (415, 290, 587, 445, skinClr) %middle of face
		    drawline (415, 290, 415, 447, 7) %left straight outline
		    drawline (587, 290, 587, 445, 7) %right straight outline
		    drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
		    drawarc (501, 445, 86, 50, 0, 182, 7) %forehead outline
		    drawfillarc (501, 290, 86, 70, 180, 0, skinClr) %chin
		    drawarc (501, 290, 86, 70, 180, 0, 7) %chin outline
		    Draw.Dot (415, 443, 7) %outline
		    Draw.Dot (587, 291, 7) %outline
		    Draw.Dot (587, 292, 7) %outline
		    Draw.Dot (587, 293, 7) %outline
		    Draw.Dot (587, 290, 7) %outline
		    %Draws the previous ear shape
		    %draws the small ears
		    if prevEar = 1 then
			drawfillarc (585, 370, 20, 20, 270, 90, skinClr) %right ear
			drawarc (585, 370, 20, 20, 273, 95, 7) %outline
			drawfillarc (418, 370, 20, 20, 90, 270, skinClr) %left ear
			drawarc (418, 370, 20, 20, 90, 273, 7) %outline
			%draws the medium sized ears
		    elsif prevEar = 2 then
			drawfillarc (585, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (585, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (418, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (418, 370, 20, 30, 90, 273, 7) %outline
			%this draws the long ear
		    elsif prevEar = 3 then
			drawfillarc (585, 370, 20, 40, 270, 90, skinClr) %right ear
			drawarc (585, 370, 20, 40, 273, 95, 7) %outline
			drawfillarc (418, 370, 20, 40, 90, 270, skinClr) %left ear
			drawarc (418, 370, 20, 40, 90, 273, 7) %outline
			%this draws the pointed ear
		    elsif prevEar = 4 then
			drawfillarc (587, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (587, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (416, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (416, 370, 20, 30, 90, 273, 7) %outline
			%point
			for x : 0 .. 30
			    drawline (590, 418, 571 + x, 395, skinClr) %right ear
			    drawline (411, 417, 400 + x, 394, skinClr) %left ear
			end for
			drawline (590, 418, 601, 393, 7) %outline right of right ear
			drawline (590, 418, 585, 410, 7) %small right point outline of right ear
			drawline (410, 418, 401, 392, 7) %outline left of left ear
			drawline (410, 417, 416, 409, 7) %small left point outline of left ear
		    elsif prevEar = 5 then
			drawfillarc (587, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (587, 370, 20, 30, 273, 95, 7) %outline of right ear
			drawfillarc (416, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (416, 370, 20, 30, 90, 273, 7) %outline of left ear
		    end if
		    %Draws the previous hair shape
		    %this draws the long brown hair
		    if prevHair = 1 then
			drawfillarc (500, 450, 120, 50, 340, 200, 137) %scalp area
			drawfillbox (380, 200, 420, 450, 137) %left hair
			drawfillbox (580, 200, 620, 450, 137) %right hair
			drawarc (500, 450, 120, 50, 360, 185, 7) %scalp outline
			drawline (380, 200, 380, 450, 7) %left outline
			drawline (380, 200, 420, 200, 7) %left bottom outline
			drawline (420, 200, 420, 440, 7) %left inside outline
			drawline (420, 438, 500, 450, 7) %left top outline
			drawline (500, 450, 580, 438, 7) %left top outline
			drawline (580, 200, 580, 440, 7) %right inside outline
			drawline (580, 200, 620, 200, 7) %right bottom outline
			drawline (620, 200, 620, 450, 7) %right outline
			%this draws the short brown hair
		    elsif prevHair = 2 then
			drawfillbox (412, 440, 588, 510, 137)
			drawbox (412, 440, 588, 510, 7)
			%this draws the long black hair
		    elsif prevHair = 3 then
			drawfillarc (500, 430, 100, 80, 0, 180, 7) %scalp area
			drawfilloval (390, 325, 20, 125, 7) %left pigtail
			drawfilloval (610, 325, 20, 125, 7) %right pigtail
			Draw.ThickLine (398, 429, 398, 451, 10, 7) %left hair tie
			Draw.ThickLine (601, 429, 603, 451, 10, 7) %right hair tie
			Draw.ThickLine (398, 430, 398, 450, 8, 101) %left hair tie
			Draw.ThickLine (603, 430, 603, 450, 8, 101) %right hair tie
			%this draws the short black hair
		    elsif prevHair = 4 then
			drawfillarc (500, 430, 95, 80, 0, 180, 7)
			%this draws the blond hair that is in space buns
		    elsif prevHair = 5 then
			drawfillarc (500, 430, 95, 80, 0, 180, 139) %scalp area
			drawfilloval (399, 500, 40, 40, 139) %left bun
			drawfilloval (601, 500, 40, 40, 139) %right bun
			drawarc (500, 430, 95, 80, 0, 181, 7) %scalp outline
			drawline (405, 430, 595, 430, 7) %bottom of bang outline
			drawarc (399, 500, 40, 40, 343, 290, 7) %outline for left bun
			drawarc (601, 500, 40, 40, 248, 197, 7) %outline of the right bun
		    end if
		    %Draws the previous nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		end if
		faceShape := true
		prevShape := 4
		%this is for the round-oval face shape
	    elsif mousex >= 78 and mousex <= 158 and mousey >= 330 and mousey <= 370 then     %This is the face shape box #5
		if prevShape ~= 5 then
		    %Erase
		    drawfillbox (239, 139, 761, 612, 0)
		    %FaceShapes
		    drawfilloval (499, 370, 115, 125, skinClr)
		    drawoval (499, 370, 115, 125, 7) %outline
		    %Draws the previous ear shape
		    %draws the small ears
		    if prevEar = 1 then
			drawfillarc (613, 370, 20, 20, 270, 90, skinClr) %right ear
			drawarc (613, 370, 20, 20, 273, 95, 7) %outline
			drawfillarc (388, 370, 20, 20, 90, 270, skinClr) %left ear
			drawarc (388, 370, 20, 20, 90, 273, 7) %outline
			drawfill (499, 370, skinClr, 7)
			%draws the medium sized ears
		    elsif prevEar = 2 then
			drawfillarc (611, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (611, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (387, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (388, 370, 20, 30, 90, 273, 7) %outline
			%this draws the long ear
		    elsif prevEar = 3 then
			drawfillarc (607, 370, 20, 40, 270, 90, skinClr) %right ear
			drawarc (607, 370, 20, 40, 273, 95, 7) %outline
			drawfillarc (392, 370, 20, 40, 90, 270, skinClr) %left ear
			drawarc (392, 370, 20, 40, 90, 273, 7) %outline
			%this draws the pointed ear
		    elsif prevEar = 4 then
			drawfillarc (611, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (611, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (387, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (387, 370, 20, 30, 90, 273, 7) %outline
			%point
			for x : 0 .. 30
			    drawline (610, 418, 595 + x, 395, skinClr) %right ear
			    drawline (388, 417, 373 + x, 394, skinClr) %left ear
			end for
			drawline (610, 418, 625, 393, 7) %outline right of right ear
			drawline (610, 418, 605, 410, 7) %small right point outline of right ear
			drawline (388, 418, 373, 392, 7) %outline left of left ear
			drawline (388, 417, 393, 409, 7) %small left point outline of left ear
		    elsif prevEar = 5 then
			drawfillarc (610, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (610, 370, 20, 30, 273, 95, 7) %outline of right ear
			drawfillarc (389, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (389, 370, 20, 30, 90, 273, 7) %outline of left ear
		    end if
		    %Draws the previous hair shape
		    %this draws the long brown hair
		    if prevHair = 1 then
			drawfillarc (500, 450, 120, 50, 340, 200, 137) %scalp area
			drawfillbox (380, 200, 420, 450, 137) %left hair
			drawfillbox (580, 200, 620, 450, 137) %right hair
			drawarc (500, 450, 120, 50, 360, 185, 7) %scalp outline
			drawline (380, 200, 380, 450, 7) %left outline
			drawline (380, 200, 420, 200, 7) %left bottom outline
			drawline (420, 200, 420, 440, 7) %left inside outline
			drawline (420, 438, 500, 450, 7) %left top outline
			drawline (500, 450, 580, 438, 7) %left top outline
			drawline (580, 200, 580, 440, 7) %right inside outline
			drawline (580, 200, 620, 200, 7) %right bottom outline
			drawline (620, 200, 620, 450, 7) %right outline
			%this draws the short brown hair
		    elsif prevHair = 2 then
			drawfillbox (412, 440, 588, 510, 137)
			drawbox (412, 440, 588, 510, 7)
			%this draws the long black hair
		    elsif prevHair = 3 then
			drawfillarc (500, 430, 100, 80, 0, 180, 7) %scalp area
			drawfilloval (390, 325, 20, 125, 7) %left pigtail
			drawfilloval (610, 325, 20, 125, 7) %right pigtail
			Draw.ThickLine (398, 429, 398, 451, 10, 7) %left hair tie
			Draw.ThickLine (601, 429, 603, 451, 10, 7) %right hair tie
			Draw.ThickLine (398, 430, 398, 450, 8, 101) %left hair tie
			Draw.ThickLine (603, 430, 603, 450, 8, 101) %right hair tie
			%this draws the short black hair
		    elsif prevHair = 4 then
			drawfillarc (500, 430, 95, 80, 0, 180, 7)
			%this draws the blond hair that is in space buns
		    elsif prevHair = 5 then
			drawfillarc (500, 430, 95, 80, 0, 180, 139) %scalp area
			drawfilloval (399, 500, 40, 40, 139) %left bun
			drawfilloval (601, 500, 40, 40, 139) %right bun
			drawarc (500, 430, 95, 80, 0, 181, 7) %scalp outline
			drawline (405, 430, 595, 430, 7) %bottom of bang outline
			drawarc (399, 500, 40, 40, 343, 290, 7) %outline for left bun
			drawarc (601, 500, 40, 40, 248, 197, 7) %outline of the right bun
		    end if
		    %Draws the previous nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		end if
		faceShape := true
		prevShape := 5
		%%%%%%%%%%%%%%%%%%%%%%%%%HAIR%%%%%%%%%%%%%%%%%%%%%%%%
		%The erase for the hair works like the face because the hair overlaps with the face. It clears the display area and draws the face with the facial features with a new hairstyle.
	    elsif mousex >= 18 and mousex <= 98 and mousey >= 10 and mousey <= 40 and faceShape = true then %This is the hair box #1
		if prevHair ~= 1 then
		    %Erase
		    drawfillbox (239, 139, 761, 612, 0)
		    %Draws the previous face shape
		    %this draws the round face shape
		    if prevShape = 1 then
			drawfilloval (499, 370, 115, 115, skinClr)
			drawoval (499, 370, 115, 115, 7)
			%oval face shape
		    elsif prevShape = 2 then
			drawfilloval (499, 370, 100, 130, skinClr)
			drawoval (499, 370, 100, 130, 7)
			%distinct face shape
		    elsif prevShape = 3 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 445, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 180, 7) %forehead outline
			for x : 0 .. 172
			    drawline (501, 240, 415 + x, 290, skinClr) %chin
			end for
			drawline (501, 240, 415, 290, 7) %outline left of chin
			drawline (501, 240, 587, 290, 7) %outline of right chin
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 447, 7) %outline
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 445, 7) %outline
			%egg face shape
		    elsif prevShape = 4 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 447, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 182, 7) %forehead outline
			drawfillarc (501, 290, 86, 70, 180, 0, skinClr) %chin
			drawarc (501, 290, 86, 70, 180, 0, 7) %chin outline
			Draw.Dot (415, 443, 7) %outline
			Draw.Dot (587, 291, 7) %outline
			Draw.Dot (587, 292, 7) %outline
			Draw.Dot (587, 293, 7) %outline
			Draw.Dot (587, 290, 7) %outline
			%round-oval face shape
		    elsif prevShape = 5 then
			drawfilloval (499, 370, 115, 125, skinClr)
			drawoval (499, 370, 115, 125, 7) %outline
		    end if
		    %Draws the previous nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous ear shape
		    %small ears
		    if prevEar = 1 and prevShape = 1 or prevEar = 1 and prevShape = 5 then
			drawfillarc (613, 370, 20, 20, 270, 90, skinClr) %right ear
			drawarc (613, 370, 20, 20, 273, 95, 7) %outline
			drawfillarc (388, 370, 20, 20, 90, 270, skinClr) %left ear
			drawarc (388, 370, 20, 20, 90, 273, 7) %outline
			%medium ears
		    elsif prevEar = 2 and prevShape = 1 or prevEar = 2 and prevShape = 5 then
			drawfillarc (611, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (611, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (387, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (388, 370, 20, 30, 90, 273, 7) %outline
			%long ears
		    elsif prevEar = 3 and prevShape = 1 or prevEar = 3 and prevShape = 5 then
			drawfillarc (607, 370, 20, 40, 270, 90, skinClr) %right ear
			drawarc (607, 370, 20, 40, 273, 95, 7) %outline
			drawfillarc (392, 370, 20, 40, 90, 270, skinClr) %left ear
			drawarc (392, 370, 20, 40, 90, 273, 7) %outline
			%pointed ears
		    elsif prevEar = 4 and prevShape = 1 or prevEar = 4 and prevShape = 5 then
			drawfillarc (611, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (611, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (389, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (389, 370, 20, 30, 90, 273, 7) %outline
			%point
			for x : 0 .. 30
			    drawline (610, 418, 595 + x, 395, skinClr) %right ear
			    drawline (390, 417, 375 + x, 394, skinClr) %left ear
			end for
			drawline (610, 418, 625, 393, 7) %outline right of right ear
			drawline (610, 418, 605, 410, 7) %small right point outline of right ear
			drawline (390, 418, 375, 392, 7) %outline left of left ear
			drawline (390, 417, 395, 409, 7) %small left point outline of left ear
			%attached lobe ear
		    elsif prevEar = 5 and prevShape = 1 or prevEar = 5 and prevShape = 5 then
			drawfillarc (610, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (610, 370, 20, 30, 273, 95, 7) %outline of right ear
			drawfillarc (389, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (389, 370, 20, 30, 90, 273, 7) %outline of left ear
			%small ear
		    elsif prevEar = 1 and prevShape = 3 or prevEar = 1 and prevShape = 4 then
			drawfillarc (585, 370, 20, 20, 270, 90, skinClr) %right ear
			drawarc (585, 370, 20, 20, 273, 95, 7) %outline
			drawfillarc (418, 370, 20, 20, 90, 270, skinClr) %left ear
			drawarc (418, 370, 20, 20, 90, 273, 7) %outline
			%medium ear
		    elsif prevEar = 2 and prevShape = 3 or prevEar = 2 and prevShape = 4 then
			drawfillarc (585, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (585, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (418, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (418, 370, 20, 30, 90, 273, 7) %outline
			%long ear
		    elsif prevEar = 3 and prevShape = 3 or prevEar = 3 and prevShape = 4 then
			drawfillarc (585, 370, 20, 40, 270, 90, skinClr) %right ear
			drawarc (585, 370, 20, 40, 273, 95, 7) %outline
			drawfillarc (418, 370, 20, 40, 90, 270, skinClr) %left ear
			drawarc (418, 370, 20, 40, 90, 273, 7) %outline
			%pointed ear
		    elsif prevEar = 4 and prevShape = 3 or prevEar = 4 and prevShape = 4 then
			drawfillarc (587, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (587, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (416, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (416, 370, 20, 30, 90, 273, 7) %outline
			%point
			for x : 0 .. 30
			    drawline (590, 418, 571 + x, 395, skinClr) %right ear
			    drawline (411, 417, 400 + x, 394, skinClr) %left ear
			end for
			drawline (590, 418, 601, 393, 7) %outline right of right ear
			drawline (590, 418, 585, 410, 7) %small right point outline of right ear
			drawline (410, 418, 401, 392, 7) %outline left of left ear
			drawline (410, 417, 416, 409, 7) %small left point outline of left ear
			%attached lobe ear
		    elsif prevEar = 5 and prevShape = 3 or prevEar = 5 and prevShape = 4 then
			drawfillarc (587, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (587, 370, 20, 30, 273, 95, 7) %outline of right ear
			drawfillarc (416, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (416, 370, 20, 30, 90, 273, 7) %outline of left ear
			%small ear
		    elsif prevEar = 1 and prevShape = 2 then
			drawfillarc (599, 370, 20, 20, 270, 90, skinClr) %right ear
			drawarc (599, 370, 20, 20, 273, 95, 7) %outline
			drawfillarc (399, 370, 20, 20, 90, 270, skinClr) %left ear
			drawarc (400, 370, 20, 20, 90, 273, 7) %outline
			%medium ear
		    elsif prevEar = 2 and prevShape = 2 then
			drawfillarc (598, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (597, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (400, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (402, 370, 20, 30, 90, 273, 7) %outline
			%long ear
		    elsif prevEar = 3 and prevShape = 2 then
			drawfillarc (595, 370, 20, 40, 270, 90, skinClr) %right ear
			drawarc (594, 370, 20, 40, 273, 95, 7) %outline
			drawfillarc (403, 370, 20, 40, 90, 270, skinClr) %left ear
			drawarc (404, 370, 20, 40, 90, 273, 7) %outline
			%pointed ear
		    elsif prevEar = 4 and prevShape = 2 then
			drawfillarc (597, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (597, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (402, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (402, 370, 20, 30, 90, 273, 7) %outline
			%point
			for x : 0 .. 30
			    drawline (596, 418, 581 + x, 395, skinClr) %right ear
			    drawline (403, 417, 388 + x, 394, skinClr) %left ear
			end for
			drawline (596, 418, 611, 393, 7) %outline right of right ear
			drawline (596, 418, 591, 410, 7) %small right point outline of right ear
			drawline (403, 418, 388, 392, 7) %outline left of left ear
			drawline (403, 417, 408, 409, 7) %small left point outline of left ear
			drawfill (499, 370, skinClr, 7)
			%attached lobe ear
		    elsif prevEar = 5 and prevShape = 2 then
			drawfillarc (595, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (595, 370, 20, 30, 273, 95, 7) %outline of right ear
			drawfillarc (404, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (404, 370, 20, 30, 90, 273, 7) %outline of left ear
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		    %Long Brown Hair
		    drawfillarc (500, 450, 120, 50, 340, 200, 137) %scalp area
		    drawfillbox (380, 200, 420, 450, 137) %left hair
		    drawfillbox (580, 200, 620, 450, 137) %right hair
		    drawarc (500, 450, 120, 50, 360, 185, 7) %scalp outline
		    drawline (380, 200, 380, 450, 7) %left outline
		    drawline (380, 200, 420, 200, 7) %left bottom outline
		    drawline (420, 200, 420, 440, 7) %left inside outline
		    drawline (420, 438, 500, 450, 7) %left top outline
		    drawline (500, 450, 580, 438, 7) %left top outline
		    drawline (580, 200, 580, 440, 7) %right inside outline
		    drawline (580, 200, 620, 200, 7) %right bottom outline
		    drawline (620, 200, 620, 450, 7) %right outline
		end if
		prevHair := 1

	    elsif mousex >= 116 and mousex <= 196 and mousey >= 10 and mousey <= 40 and faceShape = true then     %This is the hair box #2
		if prevHair ~= 2 then
		    %erase
		    drawfillbox (239, 139, 761, 612, 0)
		    %Draws the previous face shape
		    %this draws the round face shape
		    if prevShape = 1 then
			drawfilloval (499, 370, 115, 115, skinClr)
			drawoval (499, 370, 115, 115, 7)
			%oval face shape
		    elsif prevShape = 2 then
			drawfilloval (499, 370, 100, 130, skinClr)
			drawoval (499, 370, 100, 130, 7)
			%distinct face shape
		    elsif prevShape = 3 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 445, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 180, 7) %forehead outline
			for x : 0 .. 172
			    drawline (501, 240, 415 + x, 290, skinClr) %chin
			end for
			drawline (501, 240, 415, 290, 7) %outline left of chin
			drawline (501, 240, 587, 290, 7) %outline of right chin
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 447, 7) %outline
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 445, 7) %outline
			%egg face shape
		    elsif prevShape = 4 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 447, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 182, 7) %forehead outline
			drawfillarc (501, 290, 86, 70, 180, 0, skinClr) %chin
			drawarc (501, 290, 86, 70, 180, 0, 7) %chin outline
			Draw.Dot (415, 443, 7) %outline
			Draw.Dot (587, 291, 7) %outline
			Draw.Dot (587, 292, 7) %outline
			Draw.Dot (587, 293, 7) %outline
			Draw.Dot (587, 290, 7) %outline
			%round-oval face shape
		    elsif prevShape = 5 then
			drawfilloval (499, 370, 115, 125, skinClr)
			drawoval (499, 370, 115, 125, 7) %outline
		    end if
		    %Draws the previous nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous ear shape
		    %small ears
		    if prevEar = 1 and prevShape = 1 or prevEar = 1 and prevShape = 5 then
			drawfillarc (613, 370, 20, 20, 270, 90, skinClr) %right ear
			drawarc (613, 370, 20, 20, 273, 95, 7) %outline
			drawfillarc (388, 370, 20, 20, 90, 270, skinClr) %left ear
			drawarc (388, 370, 20, 20, 90, 273, 7) %outline
			%medium ears
		    elsif prevEar = 2 and prevShape = 1 or prevEar = 2 and prevShape = 5 then
			drawfillarc (611, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (611, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (387, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (388, 370, 20, 30, 90, 273, 7) %outline
			%long ears
		    elsif prevEar = 3 and prevShape = 1 or prevEar = 3 and prevShape = 5 then
			drawfillarc (607, 370, 20, 40, 270, 90, skinClr) %right ear
			drawarc (607, 370, 20, 40, 273, 95, 7) %outline
			drawfillarc (392, 370, 20, 40, 90, 270, skinClr) %left ear
			drawarc (392, 370, 20, 40, 90, 273, 7) %outline
			%pointed ears
		    elsif prevEar = 4 and prevShape = 1 or prevEar = 4 and prevShape = 5 then
			drawfillarc (611, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (611, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (389, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (389, 370, 20, 30, 90, 273, 7) %outline
			%point
			for x : 0 .. 30
			    drawline (610, 418, 595 + x, 395, skinClr) %right ear
			    drawline (390, 417, 375 + x, 394, skinClr) %left ear
			end for
			drawline (610, 418, 625, 393, 7) %outline right of right ear
			drawline (610, 418, 605, 410, 7) %small right point outline of right ear
			drawline (390, 418, 375, 392, 7) %outline left of left ear
			drawline (390, 417, 395, 409, 7) %small left point outline of left ear
			%attached lobe ear
		    elsif prevEar = 5 and prevShape = 1 or prevEar = 5 and prevShape = 5 then
			drawfillarc (610, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (610, 370, 20, 30, 273, 95, 7) %outline of right ear
			drawfillarc (389, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (389, 370, 20, 30, 90, 273, 7) %outline of left ear
			%small ear
		    elsif prevEar = 1 and prevShape = 3 or prevEar = 1 and prevShape = 4 then
			drawfillarc (585, 370, 20, 20, 270, 90, skinClr) %right ear
			drawarc (585, 370, 20, 20, 273, 95, 7) %outline
			drawfillarc (418, 370, 20, 20, 90, 270, skinClr) %left ear
			drawarc (418, 370, 20, 20, 90, 273, 7) %outline
			%medium ear
		    elsif prevEar = 2 and prevShape = 3 or prevEar = 2 and prevShape = 4 then
			drawfillarc (585, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (585, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (418, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (418, 370, 20, 30, 90, 273, 7) %outline
			%long ear
		    elsif prevEar = 3 and prevShape = 3 or prevEar = 3 and prevShape = 4 then
			drawfillarc (585, 370, 20, 40, 270, 90, skinClr) %right ear
			drawarc (585, 370, 20, 40, 273, 95, 7) %outline
			drawfillarc (418, 370, 20, 40, 90, 270, skinClr) %left ear
			drawarc (418, 370, 20, 40, 90, 273, 7) %outline
			%pointed ear
		    elsif prevEar = 4 and prevShape = 3 or prevEar = 4 and prevShape = 4 then
			drawfillarc (587, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (587, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (416, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (416, 370, 20, 30, 90, 273, 7) %outline
			%point
			for x : 0 .. 30
			    drawline (590, 418, 571 + x, 395, skinClr) %right ear
			    drawline (411, 417, 400 + x, 394, skinClr) %left ear
			end for
			drawline (590, 418, 601, 393, 7) %outline right of right ear
			drawline (590, 418, 585, 410, 7) %small right point outline of right ear
			drawline (410, 418, 401, 392, 7) %outline left of left ear
			drawline (410, 417, 416, 409, 7) %small left point outline of left ear
			%attached lobe ear
		    elsif prevEar = 5 and prevShape = 3 or prevEar = 5 and prevShape = 4 then
			drawfillarc (587, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (587, 370, 20, 30, 273, 95, 7) %outline of right ear
			drawfillarc (416, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (416, 370, 20, 30, 90, 273, 7) %outline of left ear
			%small ear
		    elsif prevEar = 1 and prevShape = 2 then
			drawfillarc (599, 370, 20, 20, 270, 90, skinClr) %right ear
			drawarc (599, 370, 20, 20, 273, 95, 7) %outline
			drawfillarc (399, 370, 20, 20, 90, 270, skinClr) %left ear
			drawarc (400, 370, 20, 20, 90, 273, 7) %outline
			%medium ear
		    elsif prevEar = 2 and prevShape = 2 then
			drawfillarc (598, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (597, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (400, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (402, 370, 20, 30, 90, 273, 7) %outline
			%long ear
		    elsif prevEar = 3 and prevShape = 2 then
			drawfillarc (595, 370, 20, 40, 270, 90, skinClr) %right ear
			drawarc (594, 370, 20, 40, 273, 95, 7) %outline
			drawfillarc (403, 370, 20, 40, 90, 270, skinClr) %left ear
			drawarc (404, 370, 20, 40, 90, 273, 7) %outline
			%pointed ear
		    elsif prevEar = 4 and prevShape = 2 then
			drawfillarc (597, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (597, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (402, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (402, 370, 20, 30, 90, 273, 7) %outline
			%point
			for x : 0 .. 30
			    drawline (596, 418, 581 + x, 395, skinClr) %right ear
			    drawline (403, 417, 388 + x, 394, skinClr) %left ear
			end for
			drawline (596, 418, 611, 393, 7) %outline right of right ear
			drawline (596, 418, 591, 410, 7) %small right point outline of right ear
			drawline (403, 418, 388, 392, 7) %outline left of left ear
			drawline (403, 417, 408, 409, 7) %small left point outline of left ear
			%attached lobe ear
		    elsif prevEar = 5 and prevShape = 2 then
			drawfillarc (595, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (595, 370, 20, 30, 273, 95, 7) %outline of right ear
			drawfillarc (404, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (404, 370, 20, 30, 90, 273, 7) %outline of left ear
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		    %Short Brown Hair
		    drawfillbox (412, 440, 588, 510, 137)
		    drawbox (412, 440, 588, 510, 7)
		end if
		prevHair := 2

	    elsif mousex >= 214 and mousex <= 294 and mousey >= 10 and mousey <= 40 and faceShape = true then         %This is the hair box #3
		if prevHair ~= 3 then
		    %erase
		    drawfillbox (239, 139, 761, 612, 0)
		    %Draws the previous face shape
		    %this draws the round face shape
		    if prevShape = 1 then
			drawfilloval (499, 370, 115, 115, skinClr)
			drawoval (499, 370, 115, 115, 7)
			%oval face shape
		    elsif prevShape = 2 then
			drawfilloval (499, 370, 100, 130, skinClr)
			drawoval (499, 370, 100, 130, 7)
			%distinct face shape
		    elsif prevShape = 3 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 445, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 180, 7) %forehead outline
			for x : 0 .. 172
			    drawline (501, 240, 415 + x, 290, skinClr) %chin
			end for
			drawline (501, 240, 415, 290, 7) %outline left of chin
			drawline (501, 240, 587, 290, 7) %outline of right chin
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 447, 7) %outline
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 445, 7) %outline
			%egg face shape
		    elsif prevShape = 4 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 447, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 182, 7) %forehead outline
			drawfillarc (501, 290, 86, 70, 180, 0, skinClr) %chin
			drawarc (501, 290, 86, 70, 180, 0, 7) %chin outline
			Draw.Dot (415, 443, 7) %outline
			Draw.Dot (587, 291, 7) %outline
			Draw.Dot (587, 292, 7) %outline
			Draw.Dot (587, 293, 7) %outline
			Draw.Dot (587, 290, 7) %outline
			%round-oval face shape
		    elsif prevShape = 5 then
			drawfilloval (499, 370, 115, 125, skinClr)
			drawoval (499, 370, 115, 125, 7) %outline
		    end if
		    %Draws the previous nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous ear shape
		    %small ears
		    if prevEar = 1 and prevShape = 1 or prevEar = 1 and prevShape = 5 then
			drawfillarc (613, 370, 20, 20, 270, 90, skinClr) %right ear
			drawarc (613, 370, 20, 20, 273, 95, 7) %outline
			drawfillarc (388, 370, 20, 20, 90, 270, skinClr) %left ear
			drawarc (388, 370, 20, 20, 90, 273, 7) %outline
			%medium ears
		    elsif prevEar = 2 and prevShape = 1 or prevEar = 2 and prevShape = 5 then
			drawfillarc (611, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (611, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (387, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (388, 370, 20, 30, 90, 273, 7) %outline
			%long ears
		    elsif prevEar = 3 and prevShape = 1 or prevEar = 3 and prevShape = 5 then
			drawfillarc (607, 370, 20, 40, 270, 90, skinClr) %right ear
			drawarc (607, 370, 20, 40, 273, 95, 7) %outline
			drawfillarc (392, 370, 20, 40, 90, 270, skinClr) %left ear
			drawarc (392, 370, 20, 40, 90, 273, 7) %outline
			%pointed ears
		    elsif prevEar = 4 and prevShape = 1 or prevEar = 4 and prevShape = 5 then
			drawfillarc (611, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (611, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (389, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (389, 370, 20, 30, 90, 273, 7) %outline
			%point
			for x : 0 .. 30
			    drawline (610, 418, 595 + x, 395, skinClr) %right ear
			    drawline (390, 417, 375 + x, 394, skinClr) %left ear
			end for
			drawline (610, 418, 625, 393, 7) %outline right of right ear
			drawline (610, 418, 605, 410, 7) %small right point outline of right ear
			drawline (390, 418, 375, 392, 7) %outline left of left ear
			drawline (390, 417, 395, 409, 7) %small left point outline of left ear
			%attached lobe ear
		    elsif prevEar = 5 and prevShape = 1 or prevEar = 5 and prevShape = 5 then
			drawfillarc (610, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (610, 370, 20, 30, 273, 95, 7) %outline of right ear
			drawfillarc (389, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (389, 370, 20, 30, 90, 273, 7) %outline of left ear
			%small ear
		    elsif prevEar = 1 and prevShape = 3 or prevEar = 1 and prevShape = 4 then
			drawfillarc (585, 370, 20, 20, 270, 90, skinClr) %right ear
			drawarc (585, 370, 20, 20, 273, 95, 7) %outline
			drawfillarc (418, 370, 20, 20, 90, 270, skinClr) %left ear
			drawarc (418, 370, 20, 20, 90, 273, 7) %outline
			%medium ear
		    elsif prevEar = 2 and prevShape = 3 or prevEar = 2 and prevShape = 4 then
			drawfillarc (585, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (585, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (418, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (418, 370, 20, 30, 90, 273, 7) %outline
			%long ear
		    elsif prevEar = 3 and prevShape = 3 or prevEar = 3 and prevShape = 4 then
			drawfillarc (585, 370, 20, 40, 270, 90, skinClr) %right ear
			drawarc (585, 370, 20, 40, 273, 95, 7) %outline
			drawfillarc (418, 370, 20, 40, 90, 270, skinClr) %left ear
			drawarc (418, 370, 20, 40, 90, 273, 7) %outline
			%pointed ear
		    elsif prevEar = 4 and prevShape = 3 or prevEar = 4 and prevShape = 4 then
			drawfillarc (587, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (587, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (416, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (416, 370, 20, 30, 90, 273, 7) %outline
			%point
			for x : 0 .. 30
			    drawline (590, 418, 571 + x, 395, skinClr) %right ear
			    drawline (411, 417, 400 + x, 394, skinClr) %left ear
			end for
			drawline (590, 418, 601, 393, 7) %outline right of right ear
			drawline (590, 418, 585, 410, 7) %small right point outline of right ear
			drawline (410, 418, 401, 392, 7) %outline left of left ear
			drawline (410, 417, 416, 409, 7) %small left point outline of left ear
			%attached lobe ear
		    elsif prevEar = 5 and prevShape = 3 or prevEar = 5 and prevShape = 4 then
			drawfillarc (587, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (587, 370, 20, 30, 273, 95, 7) %outline of right ear
			drawfillarc (416, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (416, 370, 20, 30, 90, 273, 7) %outline of left ear
			%small ear
		    elsif prevEar = 1 and prevShape = 2 then
			drawfillarc (599, 370, 20, 20, 270, 90, skinClr) %right ear
			drawarc (599, 370, 20, 20, 273, 95, 7) %outline
			drawfillarc (399, 370, 20, 20, 90, 270, skinClr) %left ear
			drawarc (400, 370, 20, 20, 90, 273, 7) %outline
			%medium ear
		    elsif prevEar = 2 and prevShape = 2 then
			drawfillarc (598, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (597, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (400, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (402, 370, 20, 30, 90, 273, 7) %outline
			%long ear
		    elsif prevEar = 3 and prevShape = 2 then
			drawfillarc (595, 370, 20, 40, 270, 90, skinClr) %right ear
			drawarc (594, 370, 20, 40, 273, 95, 7) %outline
			drawfillarc (403, 370, 20, 40, 90, 270, skinClr) %left ear
			drawarc (404, 370, 20, 40, 90, 273, 7) %outline
			%pointed ear
		    elsif prevEar = 4 and prevShape = 2 then
			drawfillarc (597, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (597, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (402, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (402, 370, 20, 30, 90, 273, 7) %outline
			%point
			for x : 0 .. 30
			    drawline (596, 418, 581 + x, 395, skinClr) %right ear
			    drawline (403, 417, 388 + x, 394, skinClr) %left ear
			end for
			drawline (596, 418, 611, 393, 7) %outline right of right ear
			drawline (596, 418, 591, 410, 7) %small right point outline of right ear
			drawline (403, 418, 388, 392, 7) %outline left of left ear
			drawline (403, 417, 408, 409, 7) %small left point outline of left ear
			%attached lobe ear
		    elsif prevEar = 5 and prevShape = 2 then
			drawfillarc (595, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (595, 370, 20, 30, 273, 95, 7) %outline of right ear
			drawfillarc (404, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (404, 370, 20, 30, 90, 273, 7) %outline of left ear
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		    %Long Black Hair
		    drawfillarc (500, 430, 100, 80, 0, 180, 7) %scalp area
		    drawfilloval (390, 325, 20, 125, 7) %left pigtail
		    drawfilloval (610, 325, 20, 125, 7) %right pigtail
		    Draw.ThickLine (398, 429, 398, 451, 10, 7) %left hair tie
		    Draw.ThickLine (601, 429, 603, 451, 10, 7) %right hair tie
		    Draw.ThickLine (398, 430, 398, 450, 8, 101) %left hair tie
		    Draw.ThickLine (603, 430, 603, 450, 8, 101) %right hair tie
		end if
		prevHair := 3
	    elsif mousex >= 312 and mousex <= 392 and mousey >= 10 and mousey <= 40 and faceShape = true then           %This is the hair box #4
		if prevHair ~= 4 then
		    %erase
		    drawfillbox (239, 139, 761, 612, 0)
		    %Draws the previous face shape
		    %this draws the round face shape
		    if prevShape = 1 then
			drawfilloval (499, 370, 115, 115, skinClr)
			drawoval (499, 370, 115, 115, 7)
			%oval face shape
		    elsif prevShape = 2 then
			drawfilloval (499, 370, 100, 130, skinClr)
			drawoval (499, 370, 100, 130, 7)
			%distinct face shape
		    elsif prevShape = 3 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 445, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 180, 7) %forehead outline
			for x : 0 .. 172
			    drawline (501, 240, 415 + x, 290, skinClr) %chin
			end for
			drawline (501, 240, 415, 290, 7) %outline left of chin
			drawline (501, 240, 587, 290, 7) %outline of right chin
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 447, 7) %outline
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 445, 7) %outline
			%egg face shape
		    elsif prevShape = 4 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 447, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 182, 7) %forehead outline
			drawfillarc (501, 290, 86, 70, 180, 0, skinClr) %chin
			drawarc (501, 290, 86, 70, 180, 0, 7) %chin outline
			Draw.Dot (415, 443, 7) %outline
			Draw.Dot (587, 291, 7) %outline
			Draw.Dot (587, 292, 7) %outline
			Draw.Dot (587, 293, 7) %outline
			Draw.Dot (587, 290, 7) %outline
			%round-oval face shape
		    elsif prevShape = 5 then
			drawfilloval (499, 370, 115, 125, skinClr)
			drawoval (499, 370, 115, 125, 7) %outline
		    end if
		    %Draws the previous nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous ear shape
		    %small ears
		    if prevEar = 1 and prevShape = 1 or prevEar = 1 and prevShape = 5 then
			drawfillarc (613, 370, 20, 20, 270, 90, skinClr) %right ear
			drawarc (613, 370, 20, 20, 273, 95, 7) %outline
			drawfillarc (388, 370, 20, 20, 90, 270, skinClr) %left ear
			drawarc (388, 370, 20, 20, 90, 273, 7) %outline
			%medium ears
		    elsif prevEar = 2 and prevShape = 1 or prevEar = 2 and prevShape = 5 then
			drawfillarc (611, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (611, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (387, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (388, 370, 20, 30, 90, 273, 7) %outline
			%long ears
		    elsif prevEar = 3 and prevShape = 1 or prevEar = 3 and prevShape = 5 then
			drawfillarc (607, 370, 20, 40, 270, 90, skinClr) %right ear
			drawarc (607, 370, 20, 40, 273, 95, 7) %outline
			drawfillarc (392, 370, 20, 40, 90, 270, skinClr) %left ear
			drawarc (392, 370, 20, 40, 90, 273, 7) %outline
			%pointed ears
		    elsif prevEar = 4 and prevShape = 1 or prevEar = 4 and prevShape = 5 then
			drawfillarc (611, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (611, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (389, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (389, 370, 20, 30, 90, 273, 7) %outline
			%point
			for x : 0 .. 30
			    drawline (610, 418, 595 + x, 395, skinClr) %right ear
			    drawline (390, 417, 375 + x, 394, skinClr) %left ear
			end for
			drawline (610, 418, 625, 393, 7) %outline right of right ear
			drawline (610, 418, 605, 410, 7) %small right point outline of right ear
			drawline (390, 418, 375, 392, 7) %outline left of left ear
			drawline (390, 417, 395, 409, 7) %small left point outline of left ear
			%attached lobe ear
		    elsif prevEar = 5 and prevShape = 1 or prevEar = 5 and prevShape = 5 then
			drawfillarc (610, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (610, 370, 20, 30, 273, 95, 7) %outline of right ear
			drawfillarc (389, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (389, 370, 20, 30, 90, 273, 7) %outline of left ear
			%small ear
		    elsif prevEar = 1 and prevShape = 3 or prevEar = 1 and prevShape = 4 then
			drawfillarc (585, 370, 20, 20, 270, 90, skinClr) %right ear
			drawarc (585, 370, 20, 20, 273, 95, 7) %outline
			drawfillarc (418, 370, 20, 20, 90, 270, skinClr) %left ear
			drawarc (418, 370, 20, 20, 90, 273, 7) %outline
			%medium ear
		    elsif prevEar = 2 and prevShape = 3 or prevEar = 2 and prevShape = 4 then
			drawfillarc (585, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (585, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (418, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (418, 370, 20, 30, 90, 273, 7) %outline
			%long ear
		    elsif prevEar = 3 and prevShape = 3 or prevEar = 3 and prevShape = 4 then
			drawfillarc (585, 370, 20, 40, 270, 90, skinClr) %right ear
			drawarc (585, 370, 20, 40, 273, 95, 7) %outline
			drawfillarc (418, 370, 20, 40, 90, 270, skinClr) %left ear
			drawarc (418, 370, 20, 40, 90, 273, 7) %outline
			%pointed ear
		    elsif prevEar = 4 and prevShape = 3 or prevEar = 4 and prevShape = 4 then
			drawfillarc (587, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (587, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (416, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (416, 370, 20, 30, 90, 273, 7) %outline
			%point
			for x : 0 .. 30
			    drawline (590, 418, 571 + x, 395, skinClr) %right ear
			    drawline (411, 417, 400 + x, 394, skinClr) %left ear
			end for
			drawline (590, 418, 601, 393, 7) %outline right of right ear
			drawline (590, 418, 585, 410, 7) %small right point outline of right ear
			drawline (410, 418, 401, 392, 7) %outline left of left ear
			drawline (410, 417, 416, 409, 7) %small left point outline of left ear
			%attached lobe ear
		    elsif prevEar = 5 and prevShape = 3 or prevEar = 5 and prevShape = 4 then
			drawfillarc (587, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (587, 370, 20, 30, 273, 95, 7) %outline of right ear
			drawfillarc (416, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (416, 370, 20, 30, 90, 273, 7) %outline of left ear
			%small ear
		    elsif prevEar = 1 and prevShape = 2 then
			drawfillarc (599, 370, 20, 20, 270, 90, skinClr) %right ear
			drawarc (599, 370, 20, 20, 273, 95, 7) %outline
			drawfillarc (399, 370, 20, 20, 90, 270, skinClr) %left ear
			drawarc (400, 370, 20, 20, 90, 273, 7) %outline
			%medium ear
		    elsif prevEar = 2 and prevShape = 2 then
			drawfillarc (598, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (597, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (400, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (402, 370, 20, 30, 90, 273, 7) %outline
			%long ear
		    elsif prevEar = 3 and prevShape = 2 then
			drawfillarc (595, 370, 20, 40, 270, 90, skinClr) %right ear
			drawarc (594, 370, 20, 40, 273, 95, 7) %outline
			drawfillarc (403, 370, 20, 40, 90, 270, skinClr) %left ear
			drawarc (404, 370, 20, 40, 90, 273, 7) %outline
			%pointed ear
		    elsif prevEar = 4 and prevShape = 2 then
			drawfillarc (597, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (597, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (402, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (402, 370, 20, 30, 90, 273, 7) %outline
			%point
			for x : 0 .. 30
			    drawline (596, 418, 581 + x, 395, skinClr) %right ear
			    drawline (403, 417, 388 + x, 394, skinClr) %left ear
			end for
			drawline (596, 418, 611, 393, 7) %outline right of right ear
			drawline (596, 418, 591, 410, 7) %small right point outline of right ear
			drawline (403, 418, 388, 392, 7) %outline left of left ear
			drawline (403, 417, 408, 409, 7) %small left point outline of left ear
			%attached lobe ear
		    elsif prevEar = 5 and prevShape = 2 then
			drawfillarc (595, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (595, 370, 20, 30, 273, 95, 7) %outline of right ear
			drawfillarc (404, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (404, 370, 20, 30, 90, 273, 7) %outline of left ear
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		    %Short Black Hair
		    drawfillarc (500, 430, 95, 80, 0, 180, 7)
		end if
		prevHair := 4
	    elsif mousex >= 410 and mousex <= 490 and mousey >= 10 and mousey <= 40 and faceShape = true then               %This is the hair box #5
		if prevHair ~= 5 then
		    %erase
		    drawfillbox (239, 139, 761, 612, 0)
		    %Draws the previous face shape
		    %this draws the round face shape
		    if prevShape = 1 then
			drawfilloval (499, 370, 115, 115, skinClr)
			drawoval (499, 370, 115, 115, 7)
			%oval face shape
		    elsif prevShape = 2 then
			drawfilloval (499, 370, 100, 130, skinClr)
			drawoval (499, 370, 100, 130, 7)
			%distinct face shape
		    elsif prevShape = 3 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 445, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 180, 7) %forehead outline
			for x : 0 .. 172
			    drawline (501, 240, 415 + x, 290, skinClr) %chin
			end for
			drawline (501, 240, 415, 290, 7) %outline left of chin
			drawline (501, 240, 587, 290, 7) %outline of right chin
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 447, 7) %outline
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 445, 7) %outline
			%egg face shape
		    elsif prevShape = 4 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 447, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 182, 7) %forehead outline
			drawfillarc (501, 290, 86, 70, 180, 0, skinClr) %chin
			drawarc (501, 290, 86, 70, 180, 0, 7) %chin outline
			Draw.Dot (415, 443, 7) %outline
			Draw.Dot (587, 291, 7) %outline
			Draw.Dot (587, 292, 7) %outline
			Draw.Dot (587, 293, 7) %outline
			Draw.Dot (587, 290, 7) %outline
			%round-oval face shape
		    elsif prevShape = 5 then
			drawfilloval (499, 370, 115, 125, skinClr)
			drawoval (499, 370, 115, 125, 7) %outline
		    end if
		    %Draws the previous nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous ear shape
		    %small ears
		    if prevEar = 1 and prevShape = 1 or prevEar = 1 and prevShape = 5 then
			drawfillarc (613, 370, 20, 20, 270, 90, skinClr) %right ear
			drawarc (613, 370, 20, 20, 273, 95, 7) %outline
			drawfillarc (388, 370, 20, 20, 90, 270, skinClr) %left ear
			drawarc (388, 370, 20, 20, 90, 273, 7) %outline
			%medium ears
		    elsif prevEar = 2 and prevShape = 1 or prevEar = 2 and prevShape = 5 then
			drawfillarc (611, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (611, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (387, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (388, 370, 20, 30, 90, 273, 7) %outline
			%long ears
		    elsif prevEar = 3 and prevShape = 1 or prevEar = 3 and prevShape = 5 then
			drawfillarc (607, 370, 20, 40, 270, 90, skinClr) %right ear
			drawarc (607, 370, 20, 40, 273, 95, 7) %outline
			drawfillarc (392, 370, 20, 40, 90, 270, skinClr) %left ear
			drawarc (392, 370, 20, 40, 90, 273, 7) %outline
			%pointed ears
		    elsif prevEar = 4 and prevShape = 1 or prevEar = 4 and prevShape = 5 then
			drawfillarc (611, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (611, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (389, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (389, 370, 20, 30, 90, 273, 7) %outline
			%point
			for x : 0 .. 30
			    drawline (610, 418, 595 + x, 395, skinClr) %right ear
			    drawline (390, 417, 375 + x, 394, skinClr) %left ear
			end for
			drawline (610, 418, 625, 393, 7) %outline right of right ear
			drawline (610, 418, 605, 410, 7) %small right point outline of right ear
			drawline (390, 418, 375, 392, 7) %outline left of left ear
			drawline (390, 417, 395, 409, 7) %small left point outline of left ear
			%attached lobe ear
		    elsif prevEar = 5 and prevShape = 1 or prevEar = 5 and prevShape = 5 then
			drawfillarc (610, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (610, 370, 20, 30, 273, 95, 7) %outline of right ear
			drawfillarc (389, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (389, 370, 20, 30, 90, 273, 7) %outline of left ear
			%small ear
		    elsif prevEar = 1 and prevShape = 3 or prevEar = 1 and prevShape = 4 then
			drawfillarc (585, 370, 20, 20, 270, 90, skinClr) %right ear
			drawarc (585, 370, 20, 20, 273, 95, 7) %outline
			drawfillarc (418, 370, 20, 20, 90, 270, skinClr) %left ear
			drawarc (418, 370, 20, 20, 90, 273, 7) %outline
			%medium ear
		    elsif prevEar = 2 and prevShape = 3 or prevEar = 2 and prevShape = 4 then
			drawfillarc (585, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (585, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (418, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (418, 370, 20, 30, 90, 273, 7) %outline
			%long ear
		    elsif prevEar = 3 and prevShape = 3 or prevEar = 3 and prevShape = 4 then
			drawfillarc (585, 370, 20, 40, 270, 90, skinClr) %right ear
			drawarc (585, 370, 20, 40, 273, 95, 7) %outline
			drawfillarc (418, 370, 20, 40, 90, 270, skinClr) %left ear
			drawarc (418, 370, 20, 40, 90, 273, 7) %outline
			%pointed ear
		    elsif prevEar = 4 and prevShape = 3 or prevEar = 4 and prevShape = 4 then
			drawfillarc (587, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (587, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (416, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (416, 370, 20, 30, 90, 273, 7) %outline
			%point
			for x : 0 .. 30
			    drawline (590, 418, 571 + x, 395, skinClr) %right ear
			    drawline (411, 417, 400 + x, 394, skinClr) %left ear
			end for
			drawline (590, 418, 601, 393, 7) %outline right of right ear
			drawline (590, 418, 585, 410, 7) %small right point outline of right ear
			drawline (410, 418, 401, 392, 7) %outline left of left ear
			drawline (410, 417, 416, 409, 7) %small left point outline of left ear
			%attached lobe ear
		    elsif prevEar = 5 and prevShape = 3 or prevEar = 5 and prevShape = 4 then
			drawfillarc (587, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (587, 370, 20, 30, 273, 95, 7) %outline of right ear
			drawfillarc (416, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (416, 370, 20, 30, 90, 273, 7) %outline of left ear
			%small ear
		    elsif prevEar = 1 and prevShape = 2 then
			drawfillarc (599, 370, 20, 20, 270, 90, skinClr) %right ear
			drawarc (599, 370, 20, 20, 273, 95, 7) %outline
			drawfillarc (399, 370, 20, 20, 90, 270, skinClr) %left ear
			drawarc (400, 370, 20, 20, 90, 273, 7) %outline
			%medium ear
		    elsif prevEar = 2 and prevShape = 2 then
			drawfillarc (598, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (597, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (400, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (402, 370, 20, 30, 90, 273, 7) %outline
			%long ear
		    elsif prevEar = 3 and prevShape = 2 then
			drawfillarc (595, 370, 20, 40, 270, 90, skinClr) %right ear
			drawarc (594, 370, 20, 40, 273, 95, 7) %outline
			drawfillarc (403, 370, 20, 40, 90, 270, skinClr) %left ear
			drawarc (404, 370, 20, 40, 90, 273, 7) %outline
			%pointed ear
		    elsif prevEar = 4 and prevShape = 2 then
			drawfillarc (597, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (597, 370, 20, 30, 273, 95, 7) %outline
			drawfillarc (402, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (402, 370, 20, 30, 90, 273, 7) %outline
			%point
			for x : 0 .. 30
			    drawline (596, 418, 581 + x, 395, skinClr) %right ear
			    drawline (403, 417, 388 + x, 394, skinClr) %left ear
			end for
			drawline (596, 418, 611, 393, 7) %outline right of right ear
			drawline (596, 418, 591, 410, 7) %small right point outline of right ear
			drawline (403, 418, 388, 392, 7) %outline left of left ear
			drawline (403, 417, 408, 409, 7) %small left point outline of left ear
			%attached lobe ear
		    elsif prevEar = 5 and prevShape = 2 then
			drawfillarc (595, 370, 20, 30, 270, 90, skinClr) %right ear
			drawarc (595, 370, 20, 30, 273, 95, 7) %outline of right ear
			drawfillarc (404, 370, 20, 30, 90, 270, skinClr) %left ear
			drawarc (404, 370, 20, 30, 90, 273, 7) %outline of left ear
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		    %Space Buns Blond
		    drawfillarc (500, 430, 95, 80, 0, 180, 139) %scalp area
		    drawfilloval (399, 500, 40, 40, 139)     %left bun
		    drawfilloval (601, 500, 40, 40, 139)     %right bun
		    drawarc (500, 430, 95, 80, 0, 181, 7) %scalp outline
		    drawline (405, 430, 595, 430, 7) %bottom of bang outline
		    drawarc (399, 500, 40, 40, 343, 290, 7) %outline for left bun
		    drawarc (601, 500, 40, 40, 248, 197, 7) %outline of the right bun
		end if
		prevHair := 5
		%%%%%%%%%%%%%%%%%%%%%%%%%NOSE%%%%%%%%%%%%%%%%%%%%%%%%
		%This is the nose section
		%this is the circle nose
	    elsif mousex >= 18 and mousex <= 98 and mousey >= 50 and mousey <= 80 and faceShape = true then
		%Erase
		if prevNose not= 1 then
		    drawfillbox (485, 330, 515, 370, skinClr)
		end if
		%Nose
		drawoval (500, 350, 15, 15, 7)
		prevNose := 1
		%this is the oval nose
	    elsif mousex >= 116 and mousex <= 196 and mousey >= 50 and mousey <= 80 and faceShape = true then
		%Erase
		if prevNose not= 2 then
		    drawfillbox (485, 330, 515, 370, skinClr)
		end if
		%Nose
		drawoval (500, 350, 13, 20, 7)
		prevNose := 2
		%this is the triangle nose
	    elsif mousex >= 214 and mousex <= 294 and mousey >= 50 and mousey <= 80 and faceShape = true then
		%Erase
		if prevNose not= 3 then
		    drawfillbox (485, 330, 515, 370, skinClr)
		end if
		%Nose
		drawline (500, 360, 510, 340, 7) % right line
		drawline (510, 340, 490, 340, 7)         %bottom line
		drawline (490, 340, 500, 360, 7)         %left line
		prevNose := 3
		%Rectangle nose
	    elsif mousex >= 312 and mousex <= 392 and mousey >= 50 and mousey <= 80 and faceShape = true then
		%Erase
		if prevNose not= 4 then
		    drawfillbox (485, 330, 515, 370, skinClr)
		end if
		%Nose
		drawbox (495, 340, 511, 360, 7)
		prevNose := 4
		%outline nose
	    elsif mousex >= 410 and mousex <= 490 and mousey >= 50 and mousey <= 80 and faceShape = true then
		%Erase
		if prevNose not= 5 then
		    drawfillbox (485, 330, 515, 370, skinClr)
		end if
		%Nose
		drawline (490, 340, 500, 360, 7) %left line
		drawline (510, 340, 490, 340, 7) %bottom line
		prevNose := 5
		%%%%%%%%%%%%%%%%%%%%%%%%%EARS%%%%%%%%%%%%%%%%%%%%%%%%
		%This is the Ear section
		%this is the small ear
	    elsif mousex >= 508 and mousex <= 588 and mousey >= 10 and mousey <= 40 and faceShape = true and (prevShape = 1 or prevShape = 5) then
		%Erase
		if prevEar ~= 1 and prevShape = 1 or prevEar ~= 1 and prevShape = 5 then
		    drawfillbox (237, 138, 762, 613, 0)
		    drawbox (237, 138, 762, 613, 7)
		    %Draws the previous face shape
		    %this draws the round face shape
		    if prevShape = 1 then
			drawfilloval (499, 370, 115, 115, skinClr)
			drawoval (499, 370, 115, 115, 7)
			%oval face shape
		    elsif prevShape = 2 then
			drawfilloval (499, 370, 100, 130, skinClr)
			drawoval (499, 370, 100, 130, 7)
			%distinct face shape
		    elsif prevShape = 3 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 445, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 180, 7) %forehead outline
			for x : 0 .. 172
			    drawline (501, 240, 415 + x, 290, skinClr) %chin
			end for
			drawline (501, 240, 415, 290, 7) %outline left of chin
			drawline (501, 240, 587, 290, 7) %outline of right chin
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 447, 7) %outline
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 445, 7) %outline
			%egg face shape
		    elsif prevShape = 4 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 447, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 182, 7) %forehead outline
			drawfillarc (501, 290, 86, 70, 180, 0, skinClr) %chin
			drawarc (501, 290, 86, 70, 180, 0, 7) %chin outline
			Draw.Dot (415, 443, 7) %outline
			Draw.Dot (587, 291, 7) %outline
			Draw.Dot (587, 292, 7) %outline
			Draw.Dot (587, 293, 7) %outline
			Draw.Dot (587, 290, 7) %outline
			%round-oval face shape
		    elsif prevShape = 5 then
			drawfilloval (499, 370, 115, 125, skinClr)
			drawoval (499, 370, 115, 125, 7) %outline
		    end if
		    %Ears
		    drawfillarc (613, 370, 20, 20, 270, 90, skinClr) %right ear
		    drawarc (613, 370, 20, 20, 273, 95, 7) %outline
		    drawfillarc (388, 370, 20, 20, 90, 270, skinClr) %left ear
		    drawarc (388, 370, 20, 20, 90, 273, 7) %outline
		    %this draws the long brown hair
		    if prevHair = 1 then
			drawfillarc (500, 450, 120, 50, 340, 200, 137) %scalp area
			drawfillbox (380, 200, 420, 450, 137) %left hair
			drawfillbox (580, 200, 620, 450, 137) %right hair
			drawarc (500, 450, 120, 50, 360, 185, 7) %scalp outline
			drawline (380, 200, 380, 450, 7) %left outline
			drawline (380, 200, 420, 200, 7) %left bottom outline
			drawline (420, 200, 420, 440, 7) %left inside outline
			drawline (420, 438, 500, 450, 7) %left top outline
			drawline (500, 450, 580, 438, 7) %left top outline
			drawline (580, 200, 580, 440, 7) %right inside outline
			drawline (580, 200, 620, 200, 7) %right bottom outline
			drawline (620, 200, 620, 450, 7) %right outline
			%this draws the short brown hair
		    elsif prevHair = 2 then
			drawfillbox (412, 440, 588, 510, 137)
			drawbox (412, 440, 588, 510, 7)
			%this draws the long black hair
		    elsif prevHair = 3 then
			drawfillarc (500, 430, 100, 80, 0, 180, 7) %scalp area
			drawfilloval (390, 325, 20, 125, 7) %left pigtail
			drawfilloval (610, 325, 20, 125, 7) %right pigtail
			Draw.ThickLine (398, 429, 398, 451, 10, 7) %left hair tie
			Draw.ThickLine (601, 429, 603, 451, 10, 7) %right hair tie
			Draw.ThickLine (398, 430, 398, 450, 8, 101) %left hair tie
			Draw.ThickLine (603, 430, 603, 450, 8, 101) %right hair tie
			%this draws the short black hair
		    elsif prevHair = 4 then
			drawfillarc (500, 430, 95, 80, 0, 180, 7)
			%this draws the blond hair that is in space buns
		    elsif prevHair = 5 then
			drawfillarc (500, 430, 95, 80, 0, 180, 139) %scalp area
			drawfilloval (399, 500, 40, 40, 139) %left bun
			drawfilloval (601, 500, 40, 40, 139) %right bun
			drawarc (500, 430, 95, 80, 0, 181, 7) %scalp outline
			drawline (405, 430, 595, 430, 7) %bottom of bang outline
			drawarc (399, 500, 40, 40, 343, 290, 7) %outline for left bun
			drawarc (601, 500, 40, 40, 248, 197, 7) %outline of the right bun
		    end if
		    %Draws the nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		end if
		prevEar := 1
	    elsif mousex >= 508 and mousex <= 588 and mousey >= 10 and mousey <= 40 and faceShape = true and (prevShape = 3 or prevShape = 4) then
		%Erase
		if prevEar ~= 1 and prevShape = 3 or prevEar ~= 1 and prevShape = 4 then
		    drawfillbox (237, 138, 762, 613, 0)
		    drawbox (237, 138, 762, 613, 7)
		    %Draws the previous face shape
		    %this draws the round face shape
		    if prevShape = 1 then
			drawfilloval (499, 370, 115, 115, skinClr)
			drawoval (499, 370, 115, 115, 7)
			%oval face shape
		    elsif prevShape = 2 then
			drawfilloval (499, 370, 100, 130, skinClr)
			drawoval (499, 370, 100, 130, 7)
			%distinct face shape
		    elsif prevShape = 3 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 445, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 180, 7) %forehead outline
			for x : 0 .. 172
			    drawline (501, 240, 415 + x, 290, skinClr) %chin
			end for
			drawline (501, 240, 415, 290, 7) %outline left of chin
			drawline (501, 240, 587, 290, 7) %outline of right chin
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 447, 7) %outline
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 445, 7) %outline
			%egg face shape
		    elsif prevShape = 4 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 447, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 182, 7) %forehead outline
			drawfillarc (501, 290, 86, 70, 180, 0, skinClr) %chin
			drawarc (501, 290, 86, 70, 180, 0, 7) %chin outline
			Draw.Dot (415, 443, 7) %outline
			Draw.Dot (587, 291, 7) %outline
			Draw.Dot (587, 292, 7) %outline
			Draw.Dot (587, 293, 7) %outline
			Draw.Dot (587, 290, 7) %outline
			%round-oval face shape
		    elsif prevShape = 5 then
			drawfilloval (499, 370, 115, 125, skinClr)
			drawoval (499, 370, 115, 125, 7) %outline
		    end if
		    %Ears
		    drawfillarc (585, 370, 20, 20, 270, 90, skinClr)     %right ear
		    drawarc (585, 370, 20, 20, 273, 95, 7)     %outline
		    drawfillarc (418, 370, 20, 20, 90, 270, skinClr)     %left ear
		    drawarc (418, 370, 20, 20, 90, 273, 7)     %outline
		    %this draws the long brown hair
		    if prevHair = 1 then
			drawfillarc (500, 450, 120, 50, 340, 200, 137) %scalp area
			drawfillbox (380, 200, 420, 450, 137) %left hair
			drawfillbox (580, 200, 620, 450, 137) %right hair
			drawarc (500, 450, 120, 50, 360, 185, 7) %scalp outline
			drawline (380, 200, 380, 450, 7) %left outline
			drawline (380, 200, 420, 200, 7) %left bottom outline
			drawline (420, 200, 420, 440, 7) %left inside outline
			drawline (420, 438, 500, 450, 7) %left top outline
			drawline (500, 450, 580, 438, 7) %left top outline
			drawline (580, 200, 580, 440, 7) %right inside outline
			drawline (580, 200, 620, 200, 7) %right bottom outline
			drawline (620, 200, 620, 450, 7) %right outline
			%this draws the short brown hair
		    elsif prevHair = 2 then
			drawfillbox (412, 440, 588, 510, 137)
			drawbox (412, 440, 588, 510, 7)
			%this draws the long black hair
		    elsif prevHair = 3 then
			drawfillarc (500, 430, 100, 80, 0, 180, 7) %scalp area
			drawfilloval (390, 325, 20, 125, 7) %left pigtail
			drawfilloval (610, 325, 20, 125, 7) %right pigtail
			Draw.ThickLine (398, 429, 398, 451, 10, 7) %left hair tie
			Draw.ThickLine (601, 429, 603, 451, 10, 7) %right hair tie
			Draw.ThickLine (398, 430, 398, 450, 8, 101) %left hair tie
			Draw.ThickLine (603, 430, 603, 450, 8, 101) %right hair tie
			%this draws the short black hair
		    elsif prevHair = 4 then
			drawfillarc (500, 430, 95, 80, 0, 180, 7)
			%this draws the blond hair that is in space buns
		    elsif prevHair = 5 then
			drawfillarc (500, 430, 95, 80, 0, 180, 139) %scalp area
			drawfilloval (399, 500, 40, 40, 139) %left bun
			drawfilloval (601, 500, 40, 40, 139) %right bun
			drawarc (500, 430, 95, 80, 0, 181, 7) %scalp outline
			drawline (405, 430, 595, 430, 7) %bottom of bang outline
			drawarc (399, 500, 40, 40, 343, 290, 7) %outline for left bun
			drawarc (601, 500, 40, 40, 248, 197, 7) %outline of the right bun
		    end if
		    %Draws the nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		end if
		prevEar := 1
	    elsif mousex >= 508 and mousex <= 588 and mousey >= 10 and mousey <= 40 and faceShape = true then
		%Erase
		if prevEar ~= 1 and prevShape = 2 then
		    drawfillbox (237, 138, 762, 613, 0)
		    drawbox (237, 138, 762, 613, 7)
		    %Draws the previous face shape
		    %this draws the round face shape
		    if prevShape = 1 then
			drawfilloval (499, 370, 115, 115, skinClr)
			drawoval (499, 370, 115, 115, 7)
			%oval face shape
		    elsif prevShape = 2 then
			drawfilloval (499, 370, 100, 130, skinClr)
			drawoval (499, 370, 100, 130, 7)
			%distinct face shape
		    elsif prevShape = 3 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 445, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 180, 7) %forehead outline
			for x : 0 .. 172
			    drawline (501, 240, 415 + x, 290, skinClr) %chin
			end for
			drawline (501, 240, 415, 290, 7) %outline left of chin
			drawline (501, 240, 587, 290, 7) %outline of right chin
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 447, 7) %outline
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 445, 7) %outline
			%egg face shape
		    elsif prevShape = 4 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 447, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 182, 7) %forehead outline
			drawfillarc (501, 290, 86, 70, 180, 0, skinClr) %chin
			drawarc (501, 290, 86, 70, 180, 0, 7) %chin outline
			Draw.Dot (415, 443, 7) %outline
			Draw.Dot (587, 291, 7) %outline
			Draw.Dot (587, 292, 7) %outline
			Draw.Dot (587, 293, 7) %outline
			Draw.Dot (587, 290, 7) %outline
			%round-oval face shape
		    elsif prevShape = 5 then
			drawfilloval (499, 370, 115, 125, skinClr)
			drawoval (499, 370, 115, 125, 7) %outline
		    end if
		    %Ears
		    drawfillarc (599, 370, 20, 20, 270, 90, skinClr) %right ear
		    drawarc (599, 370, 20, 20, 273, 95, 7)     %outline
		    drawfillarc (399, 370, 20, 20, 90, 270, skinClr)     %left ear
		    drawarc (400, 370, 20, 20, 90, 273, 7)     %outline
		    %this draws the long brown hair
		    if prevHair = 1 then
			drawfillarc (500, 450, 120, 50, 340, 200, 137) %scalp area
			drawfillbox (380, 200, 420, 450, 137) %left hair
			drawfillbox (580, 200, 620, 450, 137) %right hair
			drawarc (500, 450, 120, 50, 360, 185, 7) %scalp outline
			drawline (380, 200, 380, 450, 7) %left outline
			drawline (380, 200, 420, 200, 7) %left bottom outline
			drawline (420, 200, 420, 440, 7) %left inside outline
			drawline (420, 438, 500, 450, 7) %left top outline
			drawline (500, 450, 580, 438, 7) %left top outline
			drawline (580, 200, 580, 440, 7) %right inside outline
			drawline (580, 200, 620, 200, 7) %right bottom outline
			drawline (620, 200, 620, 450, 7) %right outline
			%this draws the short brown hair
		    elsif prevHair = 2 then
			drawfillbox (412, 440, 588, 510, 137)
			drawbox (412, 440, 588, 510, 7)
			%this draws the long black hair
		    elsif prevHair = 3 then
			drawfillarc (500, 430, 100, 80, 0, 180, 7) %scalp area
			drawfilloval (390, 325, 20, 125, 7) %left pigtail
			drawfilloval (610, 325, 20, 125, 7) %right pigtail
			Draw.ThickLine (398, 429, 398, 451, 10, 7) %left hair tie
			Draw.ThickLine (601, 429, 603, 451, 10, 7) %right hair tie
			Draw.ThickLine (398, 430, 398, 450, 8, 101) %left hair tie
			Draw.ThickLine (603, 430, 603, 450, 8, 101) %right hair tie
			%this draws the short black hair
		    elsif prevHair = 4 then
			drawfillarc (500, 430, 95, 80, 0, 180, 7)
			%this draws the blond hair that is in space buns
		    elsif prevHair = 5 then
			drawfillarc (500, 430, 95, 80, 0, 180, 139) %scalp area
			drawfilloval (399, 500, 40, 40, 139) %left bun
			drawfilloval (601, 500, 40, 40, 139) %right bun
			drawarc (500, 430, 95, 80, 0, 181, 7) %scalp outline
			drawline (405, 430, 595, 430, 7) %bottom of bang outline
			drawarc (399, 500, 40, 40, 343, 290, 7) %outline for left bun
			drawarc (601, 500, 40, 40, 248, 197, 7) %outline of the right bun
		    end if
		    %Draws the nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		end if
		prevEar := 1
		%medium ears
	    elsif mousex >= 606 and mousex <= 686 and mousey >= 10 and mousey <= 40 and faceShape = true and (prevShape = 1 or prevShape = 5) then
		%Erase
		if prevEar ~= 2 and prevShape = 1 or prevEar ~= 2 and prevShape = 5 then
		    drawfillbox (237, 138, 762, 613, 0)
		    drawbox (237, 138, 762, 613, 7)
		    %Draws the previous face shape
		    %this draws the round face shape
		    if prevShape = 1 then
			drawfilloval (499, 370, 115, 115, skinClr)
			drawoval (499, 370, 115, 115, 7)
			%oval face shape
		    elsif prevShape = 2 then
			drawfilloval (499, 370, 100, 130, skinClr)
			drawoval (499, 370, 100, 130, 7)
			%distinct face shape
		    elsif prevShape = 3 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 445, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 180, 7) %forehead outline
			for x : 0 .. 172
			    drawline (501, 240, 415 + x, 290, skinClr) %chin
			end for
			drawline (501, 240, 415, 290, 7) %outline left of chin
			drawline (501, 240, 587, 290, 7) %outline of right chin
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 447, 7) %outline
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 445, 7) %outline
			%egg face shape
		    elsif prevShape = 4 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 447, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 182, 7) %forehead outline
			drawfillarc (501, 290, 86, 70, 180, 0, skinClr) %chin
			drawarc (501, 290, 86, 70, 180, 0, 7) %chin outline
			Draw.Dot (415, 443, 7) %outline
			Draw.Dot (587, 291, 7) %outline
			Draw.Dot (587, 292, 7) %outline
			Draw.Dot (587, 293, 7) %outline
			Draw.Dot (587, 290, 7) %outline
			%round-oval face shape
		    elsif prevShape = 5 then
			drawfilloval (499, 370, 115, 125, skinClr)
			drawoval (499, 370, 115, 125, 7) %outline
		    end if
		    %Ears
		    drawfillarc (611, 370, 20, 30, 270, 90, skinClr) %right ear
		    drawarc (611, 370, 20, 30, 273, 95, 7)     %outline
		    drawfillarc (387, 370, 20, 30, 90, 270, skinClr)     %left ear
		    drawarc (388, 370, 20, 30, 90, 273, 7)     %outline
		    View.Update
		    %Hair
		    %this draws the long brown hair
		    if prevHair = 1 then
			drawfillarc (500, 450, 120, 50, 340, 200, 137) %scalp area
			drawfillbox (380, 200, 420, 450, 137) %left hair
			drawfillbox (580, 200, 620, 450, 137) %right hair
			drawarc (500, 450, 120, 50, 360, 185, 7) %scalp outline
			drawline (380, 200, 380, 450, 7) %left outline
			drawline (380, 200, 420, 200, 7) %left bottom outline
			drawline (420, 200, 420, 440, 7) %left inside outline
			drawline (420, 438, 500, 450, 7) %left top outline
			drawline (500, 450, 580, 438, 7) %left top outline
			drawline (580, 200, 580, 440, 7) %right inside outline
			drawline (580, 200, 620, 200, 7) %right bottom outline
			drawline (620, 200, 620, 450, 7) %right outline
			%this draws the short brown hair
		    elsif prevHair = 2 then
			drawfillbox (412, 440, 588, 510, 137)
			drawbox (412, 440, 588, 510, 7)
			%this draws the long black hair
		    elsif prevHair = 3 then
			drawfillarc (500, 430, 100, 80, 0, 180, 7) %scalp area
			drawfilloval (390, 325, 20, 125, 7) %left pigtail
			drawfilloval (610, 325, 20, 125, 7) %right pigtail
			Draw.ThickLine (398, 429, 398, 451, 10, 7) %left hair tie
			Draw.ThickLine (601, 429, 603, 451, 10, 7) %right hair tie
			Draw.ThickLine (398, 430, 398, 450, 8, 101) %left hair tie
			Draw.ThickLine (603, 430, 603, 450, 8, 101) %right hair tie
			%this draws the short black hair
		    elsif prevHair = 4 then
			drawfillarc (500, 430, 95, 80, 0, 180, 7)
			%this draws the blond hair that is in space buns
		    elsif prevHair = 5 then
			drawfillarc (500, 430, 95, 80, 0, 180, 139) %scalp area
			drawfilloval (399, 500, 40, 40, 139) %left bun
			drawfilloval (601, 500, 40, 40, 139) %right bun
			drawarc (500, 430, 95, 80, 0, 181, 7) %scalp outline
			drawline (405, 430, 595, 430, 7) %bottom of bang outline
			drawarc (399, 500, 40, 40, 343, 290, 7) %outline for left bun
			drawarc (601, 500, 40, 40, 248, 197, 7) %outline of the right bun
		    end if
		    %Draws the nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		end if
		prevEar := 2
	    elsif mousex >= 606 and mousex <= 686 and mousey >= 10 and mousey <= 40 and faceShape = true and (prevShape = 3 or prevShape = 4) then
		%Erase
		if prevEar ~= 2 and prevShape = 3 or prevEar ~= 2 and prevShape = 4 then
		    drawfillbox (237, 138, 762, 613, 0)
		    drawbox (237, 138, 762, 613, 7)
		    %Draws the previous face shape
		    %this draws the round face shape
		    if prevShape = 1 then
			drawfilloval (499, 370, 115, 115, skinClr)
			drawoval (499, 370, 115, 115, 7)
			%oval face shape
		    elsif prevShape = 2 then
			drawfilloval (499, 370, 100, 130, skinClr)
			drawoval (499, 370, 100, 130, 7)
			%distinct face shape
		    elsif prevShape = 3 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 445, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 180, 7) %forehead outline
			for x : 0 .. 172
			    drawline (501, 240, 415 + x, 290, skinClr) %chin
			end for
			drawline (501, 240, 415, 290, 7) %outline left of chin
			drawline (501, 240, 587, 290, 7) %outline of right chin
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 447, 7) %outline
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 445, 7) %outline
			%egg face shape
		    elsif prevShape = 4 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 447, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 182, 7) %forehead outline
			drawfillarc (501, 290, 86, 70, 180, 0, skinClr) %chin
			drawarc (501, 290, 86, 70, 180, 0, 7) %chin outline
			Draw.Dot (415, 443, 7) %outline
			Draw.Dot (587, 291, 7) %outline
			Draw.Dot (587, 292, 7) %outline
			Draw.Dot (587, 293, 7) %outline
			Draw.Dot (587, 290, 7) %outline
			%round-oval face shape
		    elsif prevShape = 5 then
			drawfilloval (499, 370, 115, 125, skinClr)
			drawoval (499, 370, 115, 125, 7) %outline
		    end if
		    %Ears
		    drawfillarc (585, 370, 20, 30, 270, 90, skinClr) %right ear
		    drawarc (585, 370, 20, 30, 273, 95, 7)     %outline
		    drawfillarc (418, 370, 20, 30, 90, 270, skinClr)     %left ear
		    drawarc (418, 370, 20, 30, 90, 273, 7)     %outline
		    %Hair
		    %this draws the long brown hair
		    if prevHair = 1 then
			drawfillarc (500, 450, 120, 50, 340, 200, 137) %scalp area
			drawfillbox (380, 200, 420, 450, 137) %left hair
			drawfillbox (580, 200, 620, 450, 137) %right hair
			drawarc (500, 450, 120, 50, 360, 185, 7) %scalp outline
			drawline (380, 200, 380, 450, 7) %left outline
			drawline (380, 200, 420, 200, 7) %left bottom outline
			drawline (420, 200, 420, 440, 7) %left inside outline
			drawline (420, 438, 500, 450, 7) %left top outline
			drawline (500, 450, 580, 438, 7) %left top outline
			drawline (580, 200, 580, 440, 7) %right inside outline
			drawline (580, 200, 620, 200, 7) %right bottom outline
			drawline (620, 200, 620, 450, 7) %right outline
			%this draws the short brown hair
		    elsif prevHair = 2 then
			drawfillbox (412, 440, 588, 510, 137)
			drawbox (412, 440, 588, 510, 7)
			%this draws the long black hair
		    elsif prevHair = 3 then
			drawfillarc (500, 430, 100, 80, 0, 180, 7) %scalp area
			drawfilloval (390, 325, 20, 125, 7) %left pigtail
			drawfilloval (610, 325, 20, 125, 7) %right pigtail
			Draw.ThickLine (398, 429, 398, 451, 10, 7) %left hair tie
			Draw.ThickLine (601, 429, 603, 451, 10, 7) %right hair tie
			Draw.ThickLine (398, 430, 398, 450, 8, 101) %left hair tie
			Draw.ThickLine (603, 430, 603, 450, 8, 101) %right hair tie
			%this draws the short black hair
		    elsif prevHair = 4 then
			drawfillarc (500, 430, 95, 80, 0, 180, 7)
			%this draws the blond hair that is in space buns
		    elsif prevHair = 5 then
			drawfillarc (500, 430, 95, 80, 0, 180, 139) %scalp area
			drawfilloval (399, 500, 40, 40, 139) %left bun
			drawfilloval (601, 500, 40, 40, 139) %right bun
			drawarc (500, 430, 95, 80, 0, 181, 7) %scalp outline
			drawline (405, 430, 595, 430, 7) %bottom of bang outline
			drawarc (399, 500, 40, 40, 343, 290, 7) %outline for left bun
			drawarc (601, 500, 40, 40, 248, 197, 7) %outline of the right bun
		    end if
		    %Draws the nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		end if
		prevEar := 2
	    elsif mousex >= 606 and mousex <= 686 and mousey >= 10 and mousey <= 40 and faceShape = true then
		%Erase
		if prevEar ~= 2 and prevShape = 2 then
		    drawfillbox (237, 138, 762, 613, 0)
		    drawbox (237, 138, 762, 613, 7)
		    %Draws the previous face shape
		    %this draws the round face shape
		    if prevShape = 1 then
			drawfilloval (499, 370, 115, 115, skinClr)
			drawoval (499, 370, 115, 115, 7)
			%oval face shape
		    elsif prevShape = 2 then
			drawfilloval (499, 370, 100, 130, skinClr)
			drawoval (499, 370, 100, 130, 7)
			%distinct face shape
		    elsif prevShape = 3 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 445, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 180, 7) %forehead outline
			for x : 0 .. 172
			    drawline (501, 240, 415 + x, 290, skinClr) %chin
			end for
			drawline (501, 240, 415, 290, 7) %outline left of chin
			drawline (501, 240, 587, 290, 7) %outline of right chin
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 447, 7) %outline
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 445, 7) %outline
			%egg face shape
		    elsif prevShape = 4 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 447, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 182, 7) %forehead outline
			drawfillarc (501, 290, 86, 70, 180, 0, skinClr) %chin
			drawarc (501, 290, 86, 70, 180, 0, 7) %chin outline
			Draw.Dot (415, 443, 7) %outline
			Draw.Dot (587, 291, 7) %outline
			Draw.Dot (587, 292, 7) %outline
			Draw.Dot (587, 293, 7) %outline
			Draw.Dot (587, 290, 7) %outline
			%round-oval face shape
		    elsif prevShape = 5 then
			drawfilloval (499, 370, 115, 125, skinClr)
			drawoval (499, 370, 115, 125, 7) %outline
		    end if
		    %Ears
		    drawfillarc (598, 370, 20, 30, 270, 90, skinClr) %right ear
		    drawarc (597, 370, 20, 30, 273, 95, 7)     %outline
		    drawfillarc (400, 370, 20, 30, 90, 270, skinClr)     %left ear
		    drawarc (402, 370, 20, 30, 90, 273, 7)     %outline
		    %Hair
		    %this draws the long brown hair
		    if prevHair = 1 then
			drawfillarc (500, 450, 120, 50, 340, 200, 137) %scalp area
			drawfillbox (380, 200, 420, 450, 137) %left hair
			drawfillbox (580, 200, 620, 450, 137) %right hair
			drawarc (500, 450, 120, 50, 360, 185, 7) %scalp outline
			drawline (380, 200, 380, 450, 7) %left outline
			drawline (380, 200, 420, 200, 7) %left bottom outline
			drawline (420, 200, 420, 440, 7) %left inside outline
			drawline (420, 438, 500, 450, 7) %left top outline
			drawline (500, 450, 580, 438, 7) %left top outline
			drawline (580, 200, 580, 440, 7) %right inside outline
			drawline (580, 200, 620, 200, 7) %right bottom outline
			drawline (620, 200, 620, 450, 7) %right outline
			%this draws the short brown hair
		    elsif prevHair = 2 then
			drawfillbox (412, 440, 588, 510, 137)
			drawbox (412, 440, 588, 510, 7)
			%this draws the long black hair
		    elsif prevHair = 3 then
			drawfillarc (500, 430, 100, 80, 0, 180, 7) %scalp area
			drawfilloval (390, 325, 20, 125, 7) %left pigtail
			drawfilloval (610, 325, 20, 125, 7) %right pigtail
			Draw.ThickLine (398, 429, 398, 451, 10, 7) %left hair tie
			Draw.ThickLine (601, 429, 603, 451, 10, 7) %right hair tie
			Draw.ThickLine (398, 430, 398, 450, 8, 101) %left hair tie
			Draw.ThickLine (603, 430, 603, 450, 8, 101) %right hair tie
			%this draws the short black hair
		    elsif prevHair = 4 then
			drawfillarc (500, 430, 95, 80, 0, 180, 7)
			%this draws the blond hair that is in space buns
		    elsif prevHair = 5 then
			drawfillarc (500, 430, 95, 80, 0, 180, 139) %scalp area
			drawfilloval (399, 500, 40, 40, 139) %left bun
			drawfilloval (601, 500, 40, 40, 139) %right bun
			drawarc (500, 430, 95, 80, 0, 181, 7) %scalp outline
			drawline (405, 430, 595, 430, 7) %bottom of bang outline
			drawarc (399, 500, 40, 40, 343, 290, 7) %outline for left bun
			drawarc (601, 500, 40, 40, 248, 197, 7) %outline of the right bun
		    end if
		    %Draws the nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		end if
		prevEar := 2
		%this draws the long ears
	    elsif mousex >= 704 and mousex <= 784 and mousey >= 10 and mousey <= 40 and faceShape = true and (prevShape = 1 or prevShape = 5) then
		%Erase
		if prevEar not= 3 and prevShape = 1 or prevEar not= 3 and prevShape = 5 then
		    drawfillbox (237, 138, 762, 613, 0)
		    drawbox (237, 138, 762, 613, 7)
		    %Draws the previous face shape
		    %this draws the round face shape
		    if prevShape = 1 then
			drawfilloval (499, 370, 115, 115, skinClr)
			drawoval (499, 370, 115, 115, 7)
			%oval face shape
		    elsif prevShape = 2 then
			drawfilloval (499, 370, 100, 130, skinClr)
			drawoval (499, 370, 100, 130, 7)
			%distinct face shape
		    elsif prevShape = 3 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 445, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 180, 7) %forehead outline
			for x : 0 .. 172
			    drawline (501, 240, 415 + x, 290, skinClr) %chin
			end for
			drawline (501, 240, 415, 290, 7) %outline left of chin
			drawline (501, 240, 587, 290, 7) %outline of right chin
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 447, 7) %outline
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 445, 7) %outline
			%egg face shape
		    elsif prevShape = 4 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 447, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 182, 7) %forehead outline
			drawfillarc (501, 290, 86, 70, 180, 0, skinClr) %chin
			drawarc (501, 290, 86, 70, 180, 0, 7) %chin outline
			Draw.Dot (415, 443, 7) %outline
			Draw.Dot (587, 291, 7) %outline
			Draw.Dot (587, 292, 7) %outline
			Draw.Dot (587, 293, 7) %outline
			Draw.Dot (587, 290, 7) %outline
			%round-oval face shape
		    elsif prevShape = 5 then
			drawfilloval (499, 370, 115, 125, skinClr)
			drawoval (499, 370, 115, 125, 7) %outline
		    end if
		    %Ears
		    drawfillarc (607, 370, 20, 40, 270, 90, skinClr) %right ear
		    drawarc (607, 370, 20, 40, 273, 95, 7)     %outline
		    drawfillarc (392, 370, 20, 40, 90, 270, skinClr)     %left ear
		    drawarc (392, 370, 20, 40, 90, 273, 7)     %outline
		    %Hair
		    %this draws the long brown hair
		    if prevHair = 1 then
			drawfillarc (500, 450, 120, 50, 340, 200, 137) %scalp area
			drawfillbox (380, 200, 420, 450, 137) %left hair
			drawfillbox (580, 200, 620, 450, 137) %right hair
			drawarc (500, 450, 120, 50, 360, 185, 7) %scalp outline
			drawline (380, 200, 380, 450, 7) %left outline
			drawline (380, 200, 420, 200, 7) %left bottom outline
			drawline (420, 200, 420, 440, 7) %left inside outline
			drawline (420, 438, 500, 450, 7) %left top outline
			drawline (500, 450, 580, 438, 7) %left top outline
			drawline (580, 200, 580, 440, 7) %right inside outline
			drawline (580, 200, 620, 200, 7) %right bottom outline
			drawline (620, 200, 620, 450, 7) %right outline
			%this draws the short brown hair
		    elsif prevHair = 2 then
			drawfillbox (412, 440, 588, 510, 137)
			drawbox (412, 440, 588, 510, 7)
			%this draws the long black hair
		    elsif prevHair = 3 then
			drawfillarc (500, 430, 100, 80, 0, 180, 7) %scalp area
			drawfilloval (390, 325, 20, 125, 7) %left pigtail
			drawfilloval (610, 325, 20, 125, 7) %right pigtail
			Draw.ThickLine (398, 429, 398, 451, 10, 7) %left hair tie
			Draw.ThickLine (601, 429, 603, 451, 10, 7) %right hair tie
			Draw.ThickLine (398, 430, 398, 450, 8, 101) %left hair tie
			Draw.ThickLine (603, 430, 603, 450, 8, 101) %right hair tie
			%this draws the short black hair
		    elsif prevHair = 4 then
			drawfillarc (500, 430, 95, 80, 0, 180, 7)
			%this draws the blond hair that is in space buns
		    elsif prevHair = 5 then
			drawfillarc (500, 430, 95, 80, 0, 180, 139) %scalp area
			drawfilloval (399, 500, 40, 40, 139) %left bun
			drawfilloval (601, 500, 40, 40, 139) %right bun
			drawarc (500, 430, 95, 80, 0, 181, 7) %scalp outline
			drawline (405, 430, 595, 430, 7) %bottom of bang outline
			drawarc (399, 500, 40, 40, 343, 290, 7) %outline for left bun
			drawarc (601, 500, 40, 40, 248, 197, 7) %outline of the right bun
		    end if
		    %Draws the nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		end if
		prevEar := 3
	    elsif mousex >= 704 and mousex <= 784 and mousey >= 10 and mousey <= 40 and faceShape = true and (prevShape = 3 or prevShape = 4) then
		%Erase
		if prevEar not= 3 and prevShape = 3 or prevEar not= 3 and prevShape = 4 then
		    drawfillbox (237, 138, 762, 613, 0)
		    drawbox (237, 138, 762, 613, 7)
		    %Draws the previous face shape
		    %this draws the round face shape
		    if prevShape = 1 then
			drawfilloval (499, 370, 115, 115, skinClr)
			drawoval (499, 370, 115, 115, 7)
			%oval face shape
		    elsif prevShape = 2 then
			drawfilloval (499, 370, 100, 130, skinClr)
			drawoval (499, 370, 100, 130, 7)
			%distinct face shape
		    elsif prevShape = 3 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 445, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 180, 7) %forehead outline
			for x : 0 .. 172
			    drawline (501, 240, 415 + x, 290, skinClr) %chin
			end for
			drawline (501, 240, 415, 290, 7) %outline left of chin
			drawline (501, 240, 587, 290, 7) %outline of right chin
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 447, 7) %outline
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 445, 7) %outline
			%egg face shape
		    elsif prevShape = 4 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 447, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 182, 7) %forehead outline
			drawfillarc (501, 290, 86, 70, 180, 0, skinClr) %chin
			drawarc (501, 290, 86, 70, 180, 0, 7) %chin outline
			Draw.Dot (415, 443, 7) %outline
			Draw.Dot (587, 291, 7) %outline
			Draw.Dot (587, 292, 7) %outline
			Draw.Dot (587, 293, 7) %outline
			Draw.Dot (587, 290, 7) %outline
			%round-oval face shape
		    elsif prevShape = 5 then
			drawfilloval (499, 370, 115, 125, skinClr)
			drawoval (499, 370, 115, 125, 7) %outline
		    end if
		    %Ears
		    drawfillarc (585, 370, 20, 40, 270, 90, skinClr) %right ear
		    drawarc (585, 370, 20, 40, 273, 95, 7)     %outline
		    drawfillarc (418, 370, 20, 40, 90, 270, skinClr)     %left ear
		    drawarc (418, 370, 20, 40, 90, 273, 7)     %outline
		    %Hair
		    %this draws the long brown hair
		    if prevHair = 1 then
			drawfillarc (500, 450, 120, 50, 340, 200, 137) %scalp area
			drawfillbox (380, 200, 420, 450, 137) %left hair
			drawfillbox (580, 200, 620, 450, 137) %right hair
			drawarc (500, 450, 120, 50, 360, 185, 7) %scalp outline
			drawline (380, 200, 380, 450, 7) %left outline
			drawline (380, 200, 420, 200, 7) %left bottom outline
			drawline (420, 200, 420, 440, 7) %left inside outline
			drawline (420, 438, 500, 450, 7) %left top outline
			drawline (500, 450, 580, 438, 7) %left top outline
			drawline (580, 200, 580, 440, 7) %right inside outline
			drawline (580, 200, 620, 200, 7) %right bottom outline
			drawline (620, 200, 620, 450, 7) %right outline
			%this draws the short brown hair
		    elsif prevHair = 2 then
			drawfillbox (412, 440, 588, 510, 137)
			drawbox (412, 440, 588, 510, 7)
			%this draws the long black hair
		    elsif prevHair = 3 then
			drawfillarc (500, 430, 100, 80, 0, 180, 7) %scalp area
			drawfilloval (390, 325, 20, 125, 7) %left pigtail
			drawfilloval (610, 325, 20, 125, 7) %right pigtail
			Draw.ThickLine (398, 429, 398, 451, 10, 7) %left hair tie
			Draw.ThickLine (601, 429, 603, 451, 10, 7) %right hair tie
			Draw.ThickLine (398, 430, 398, 450, 8, 101) %left hair tie
			Draw.ThickLine (603, 430, 603, 450, 8, 101) %right hair tie
			%this draws the short black hair
		    elsif prevHair = 4 then
			drawfillarc (500, 430, 95, 80, 0, 180, 7)
			%this draws the blond hair that is in space buns
		    elsif prevHair = 5 then
			drawfillarc (500, 430, 95, 80, 0, 180, 139) %scalp area
			drawfilloval (399, 500, 40, 40, 139) %left bun
			drawfilloval (601, 500, 40, 40, 139) %right bun
			drawarc (500, 430, 95, 80, 0, 181, 7) %scalp outline
			drawline (405, 430, 595, 430, 7) %bottom of bang outline
			drawarc (399, 500, 40, 40, 343, 290, 7) %outline for left bun
			drawarc (601, 500, 40, 40, 248, 197, 7) %outline of the right bun
		    end if
		    %Draws the nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		end if
		prevEar := 3
	    elsif mousex >= 704 and mousex <= 784 and mousey >= 10 and mousey <= 40 and faceShape = true then
		%Erase
		if prevEar not= 3 and prevShape = 2 then
		    drawfillbox (237, 138, 762, 613, 0)
		    drawbox (237, 138, 762, 613, 7)
		    %Draws the previous face shape
		    %this draws the round face shape
		    if prevShape = 1 then
			drawfilloval (499, 370, 115, 115, skinClr)
			drawoval (499, 370, 115, 115, 7)
			%oval face shape
		    elsif prevShape = 2 then
			drawfilloval (499, 370, 100, 130, skinClr)
			drawoval (499, 370, 100, 130, 7)
			%distinct face shape
		    elsif prevShape = 3 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 445, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 180, 7) %forehead outline
			for x : 0 .. 172
			    drawline (501, 240, 415 + x, 290, skinClr) %chin
			end for
			drawline (501, 240, 415, 290, 7) %outline left of chin
			drawline (501, 240, 587, 290, 7) %outline of right chin
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 447, 7) %outline
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 445, 7) %outline
			%egg face shape
		    elsif prevShape = 4 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 447, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 182, 7) %forehead outline
			drawfillarc (501, 290, 86, 70, 180, 0, skinClr) %chin
			drawarc (501, 290, 86, 70, 180, 0, 7) %chin outline
			Draw.Dot (415, 443, 7) %outline
			Draw.Dot (587, 291, 7) %outline
			Draw.Dot (587, 292, 7) %outline
			Draw.Dot (587, 293, 7) %outline
			Draw.Dot (587, 290, 7) %outline
			%round-oval face shape
		    elsif prevShape = 5 then
			drawfilloval (499, 370, 115, 125, skinClr)
			drawoval (499, 370, 115, 125, 7) %outline
		    end if
		    %Ears
		    drawfillarc (595, 370, 20, 40, 270, 90, skinClr) %right ear
		    drawarc (594, 370, 20, 40, 273, 95, 7)     %outline
		    drawfillarc (403, 370, 20, 40, 90, 270, skinClr)     %left ear
		    drawarc (404, 370, 20, 40, 90, 273, 7)     %outline
		    %Hair
		    %this draws the long brown hair
		    if prevHair = 1 then
			drawfillarc (500, 450, 120, 50, 340, 200, 137) %scalp area
			drawfillbox (380, 200, 420, 450, 137) %left hair
			drawfillbox (580, 200, 620, 450, 137) %right hair
			drawarc (500, 450, 120, 50, 360, 185, 7) %scalp outline
			drawline (380, 200, 380, 450, 7) %left outline
			drawline (380, 200, 420, 200, 7) %left bottom outline
			drawline (420, 200, 420, 440, 7) %left inside outline
			drawline (420, 438, 500, 450, 7) %left top outline
			drawline (500, 450, 580, 438, 7) %left top outline
			drawline (580, 200, 580, 440, 7) %right inside outline
			drawline (580, 200, 620, 200, 7) %right bottom outline
			drawline (620, 200, 620, 450, 7) %right outline
			%this draws the short brown hair
		    elsif prevHair = 2 then
			drawfillbox (412, 440, 588, 510, 137)
			drawbox (412, 440, 588, 510, 7)
			%this draws the long black hair
		    elsif prevHair = 3 then
			drawfillarc (500, 430, 100, 80, 0, 180, 7) %scalp area
			drawfilloval (390, 325, 20, 125, 7) %left pigtail
			drawfilloval (610, 325, 20, 125, 7) %right pigtail
			Draw.ThickLine (398, 429, 398, 451, 10, 7) %left hair tie
			Draw.ThickLine (601, 429, 603, 451, 10, 7) %right hair tie
			Draw.ThickLine (398, 430, 398, 450, 8, 101) %left hair tie
			Draw.ThickLine (603, 430, 603, 450, 8, 101) %right hair tie
			%this draws the short black hair
		    elsif prevHair = 4 then
			drawfillarc (500, 430, 95, 80, 0, 180, 7)
			%this draws the blond hair that is in space buns
		    elsif prevHair = 5 then
			drawfillarc (500, 430, 95, 80, 0, 180, 139) %scalp area
			drawfilloval (399, 500, 40, 40, 139) %left bun
			drawfilloval (601, 500, 40, 40, 139) %right bun
			drawarc (500, 430, 95, 80, 0, 181, 7) %scalp outline
			drawline (405, 430, 595, 430, 7) %bottom of bang outline
			drawarc (399, 500, 40, 40, 343, 290, 7) %outline for left bun
			drawarc (601, 500, 40, 40, 248, 197, 7) %outline of the right bun
		    end if
		    %Draws the nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		end if
		prevEar := 3
		%this draws the pointed ears
	    elsif mousex >= 802 and mousex <= 882 and mousey >= 10 and mousey <= 40 and faceShape = true and (prevShape = 1 or prevShape = 5) then
		%Erase
		if prevEar not= 4 and prevShape = 1 or prevEar not= 4 and prevShape = 5 then
		    drawfillbox (237, 138, 762, 613, 0)
		    drawbox (237, 138, 762, 613, 7)
		    %Draws the previous face shape
		    %this draws the round face shape
		    if prevShape = 1 then
			drawfilloval (499, 370, 115, 115, skinClr)
			drawoval (499, 370, 115, 115, 7)
			%oval face shape
		    elsif prevShape = 2 then
			drawfilloval (499, 370, 100, 130, skinClr)
			drawoval (499, 370, 100, 130, 7)
			%distinct face shape
		    elsif prevShape = 3 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 445, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 180, 7) %forehead outline
			for x : 0 .. 172
			    drawline (501, 240, 415 + x, 290, skinClr) %chin
			end for
			drawline (501, 240, 415, 290, 7) %outline left of chin
			drawline (501, 240, 587, 290, 7) %outline of right chin
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 447, 7) %outline
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 445, 7) %outline
			%egg face shape
		    elsif prevShape = 4 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 447, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 182, 7) %forehead outline
			drawfillarc (501, 290, 86, 70, 180, 0, skinClr) %chin
			drawarc (501, 290, 86, 70, 180, 0, 7) %chin outline
			Draw.Dot (415, 443, 7) %outline
			Draw.Dot (587, 291, 7) %outline
			Draw.Dot (587, 292, 7) %outline
			Draw.Dot (587, 293, 7) %outline
			Draw.Dot (587, 290, 7) %outline
			%round-oval face shape
		    elsif prevShape = 5 then
			drawfilloval (499, 370, 115, 125, skinClr)
			drawoval (499, 370, 115, 125, 7) %outline
		    end if
		    %Ears
		    drawfillarc (611, 370, 20, 30, 270, 90, skinClr) %right ear
		    drawarc (611, 370, 20, 30, 273, 95, 7)     %outline
		    drawfillarc (389, 370, 20, 30, 90, 270, skinClr)     %left ear
		    drawarc (389, 370, 20, 30, 90, 273, 7)     %outline
		    %point
		    for x : 0 .. 30
			drawline (610, 418, 595 + x, 395, skinClr)     %right ear
			drawline (390, 417, 375 + x, 394, skinClr)     %left ear
		    end for
		    drawline (610, 418, 625, 393, 7)     %outline right of right ear
		    drawline (610, 418, 605, 410, 7)     %small right point outline of right ear
		    drawline (390, 418, 375, 392, 7)     %outline left of left ear
		    drawline (390, 417, 395, 409, 7)     %small left point outline of left ear
		    %Hair
		    %this draws the long brown hair
		    if prevHair = 1 then
			drawfillarc (500, 450, 120, 50, 340, 200, 137) %scalp area
			drawfillbox (380, 200, 420, 450, 137) %left hair
			drawfillbox (580, 200, 620, 450, 137) %right hair
			drawarc (500, 450, 120, 50, 360, 185, 7) %scalp outline
			drawline (380, 200, 380, 450, 7) %left outline
			drawline (380, 200, 420, 200, 7) %left bottom outline
			drawline (420, 200, 420, 440, 7) %left inside outline
			drawline (420, 438, 500, 450, 7) %left top outline
			drawline (500, 450, 580, 438, 7) %left top outline
			drawline (580, 200, 580, 440, 7) %right inside outline
			drawline (580, 200, 620, 200, 7) %right bottom outline
			drawline (620, 200, 620, 450, 7) %right outline
			%this draws the short brown hair
		    elsif prevHair = 2 then
			drawfillbox (412, 440, 588, 510, 137)
			drawbox (412, 440, 588, 510, 7)
			%this draws the long black hair
		    elsif prevHair = 3 then
			drawfillarc (500, 430, 100, 80, 0, 180, 7) %scalp area
			drawfilloval (390, 325, 20, 125, 7) %left pigtail
			drawfilloval (610, 325, 20, 125, 7) %right pigtail
			Draw.ThickLine (398, 429, 398, 451, 10, 7) %left hair tie
			Draw.ThickLine (601, 429, 603, 451, 10, 7) %right hair tie
			Draw.ThickLine (398, 430, 398, 450, 8, 101) %left hair tie
			Draw.ThickLine (603, 430, 603, 450, 8, 101) %right hair tie
			%this draws the short black hair
		    elsif prevHair = 4 then
			drawfillarc (500, 430, 95, 80, 0, 180, 7)
			%this draws the blond hair that is in space buns
		    elsif prevHair = 5 then
			drawfillarc (500, 430, 95, 80, 0, 180, 139) %scalp area
			drawfilloval (399, 500, 40, 40, 139) %left bun
			drawfilloval (601, 500, 40, 40, 139) %right bun
			drawarc (500, 430, 95, 80, 0, 181, 7) %scalp outline
			drawline (405, 430, 595, 430, 7) %bottom of bang outline
			drawarc (399, 500, 40, 40, 343, 290, 7) %outline for left bun
			drawarc (601, 500, 40, 40, 248, 197, 7) %outline of the right bun
		    end if
		    %Draws the nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		end if
		prevEar := 4
	    elsif mousex >= 802 and mousex <= 882 and mousey >= 10 and mousey <= 40 and faceShape = true and (prevShape = 3 or prevShape = 4) then
		%Erase
		if prevEar not= 4 and prevShape = 3 or prevEar not= 4 and prevShape = 4 then
		    drawfillbox (237, 138, 762, 613, 0)
		    drawbox (237, 138, 762, 613, 7)
		    %Draws the previous face shape
		    %this draws the round face shape
		    if prevShape = 1 then
			drawfilloval (499, 370, 115, 115, skinClr)
			drawoval (499, 370, 115, 115, 7)
			%oval face shape
		    elsif prevShape = 2 then
			drawfilloval (499, 370, 100, 130, skinClr)
			drawoval (499, 370, 100, 130, 7)
			%distinct face shape
		    elsif prevShape = 3 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 445, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 180, 7) %forehead outline
			for x : 0 .. 172
			    drawline (501, 240, 415 + x, 290, skinClr) %chin
			end for
			drawline (501, 240, 415, 290, 7) %outline left of chin
			drawline (501, 240, 587, 290, 7) %outline of right chin
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 447, 7) %outline
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 445, 7) %outline
			%egg face shape
		    elsif prevShape = 4 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 447, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 182, 7) %forehead outline
			drawfillarc (501, 290, 86, 70, 180, 0, skinClr) %chin
			drawarc (501, 290, 86, 70, 180, 0, 7) %chin outline
			Draw.Dot (415, 443, 7) %outline
			Draw.Dot (587, 291, 7) %outline
			Draw.Dot (587, 292, 7) %outline
			Draw.Dot (587, 293, 7) %outline
			Draw.Dot (587, 290, 7) %outline
			%round-oval face shape
		    elsif prevShape = 5 then
			drawfilloval (499, 370, 115, 125, skinClr)
			drawoval (499, 370, 115, 125, 7) %outline
		    end if
		    %Ears
		    drawfillarc (587, 370, 20, 30, 270, 90, skinClr) %right ear
		    drawarc (587, 370, 20, 30, 273, 95, 7)     %outline
		    drawfillarc (416, 370, 20, 30, 90, 270, skinClr)     %left ear
		    drawarc (416, 370, 20, 30, 90, 273, 7)     %outline
		    %point
		    for x : 0 .. 30
			drawline (590, 418, 571 + x, 395, skinClr)     %right ear
			drawline (411, 417, 400 + x, 394, skinClr)     %left ear
		    end for
		    drawline (590, 418, 601, 393, 7)     %outline right of right ear
		    drawline (590, 418, 585, 410, 7)     %small right point outline of right ear
		    drawline (410, 418, 401, 392, 7)     %outline left of left ear
		    drawline (410, 417, 416, 409, 7)     %small left point outline of left ear
		    %Hair
		    %this draws the long brown hair
		    if prevHair = 1 then
			drawfillarc (500, 450, 120, 50, 340, 200, 137) %scalp area
			drawfillbox (380, 200, 420, 450, 137) %left hair
			drawfillbox (580, 200, 620, 450, 137) %right hair
			drawarc (500, 450, 120, 50, 360, 185, 7) %scalp outline
			drawline (380, 200, 380, 450, 7) %left outline
			drawline (380, 200, 420, 200, 7) %left bottom outline
			drawline (420, 200, 420, 440, 7) %left inside outline
			drawline (420, 438, 500, 450, 7) %left top outline
			drawline (500, 450, 580, 438, 7) %left top outline
			drawline (580, 200, 580, 440, 7) %right inside outline
			drawline (580, 200, 620, 200, 7) %right bottom outline
			drawline (620, 200, 620, 450, 7) %right outline
			%this draws the short brown hair
		    elsif prevHair = 2 then
			drawfillbox (412, 440, 588, 510, 137)
			drawbox (412, 440, 588, 510, 7)
			%this draws the long black hair
		    elsif prevHair = 3 then
			drawfillarc (500, 430, 100, 80, 0, 180, 7) %scalp area
			drawfilloval (390, 325, 20, 125, 7) %left pigtail
			drawfilloval (610, 325, 20, 125, 7) %right pigtail
			Draw.ThickLine (398, 429, 398, 451, 10, 7) %left hair tie
			Draw.ThickLine (601, 429, 603, 451, 10, 7) %right hair tie
			Draw.ThickLine (398, 430, 398, 450, 8, 101) %left hair tie
			Draw.ThickLine (603, 430, 603, 450, 8, 101) %right hair tie
			%this draws the short black hair
		    elsif prevHair = 4 then
			drawfillarc (500, 430, 95, 80, 0, 180, 7)
			%this draws the blond hair that is in space buns
		    elsif prevHair = 5 then
			drawfillarc (500, 430, 95, 80, 0, 180, 139) %scalp area
			drawfilloval (399, 500, 40, 40, 139) %left bun
			drawfilloval (601, 500, 40, 40, 139) %right bun
			drawarc (500, 430, 95, 80, 0, 181, 7) %scalp outline
			drawline (405, 430, 595, 430, 7) %bottom of bang outline
			drawarc (399, 500, 40, 40, 343, 290, 7) %outline for left bun
			drawarc (601, 500, 40, 40, 248, 197, 7) %outline of the right bun
		    end if
		    %Draws the nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		end if
		prevEar := 4
	    elsif mousex >= 802 and mousex <= 882 and mousey >= 10 and mousey <= 40 and faceShape = true then
		%Erase
		if prevEar not= 4 and prevShape = 2 then
		    drawfillbox (237, 138, 762, 613, 0)
		    drawbox (237, 138, 762, 613, 7)
		    %Draws the previous face shape
		    %this draws the round face shape
		    if prevShape = 1 then
			drawfilloval (499, 370, 115, 115, skinClr)
			drawoval (499, 370, 115, 115, 7)
			%oval face shape
		    elsif prevShape = 2 then
			drawfilloval (499, 370, 100, 130, skinClr)
			drawoval (499, 370, 100, 130, 7)
			%distinct face shape
		    elsif prevShape = 3 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 445, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 180, 7) %forehead outline
			for x : 0 .. 172
			    drawline (501, 240, 415 + x, 290, skinClr) %chin
			end for
			drawline (501, 240, 415, 290, 7) %outline left of chin
			drawline (501, 240, 587, 290, 7) %outline of right chin
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 447, 7) %outline
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 445, 7) %outline
			%egg face shape
		    elsif prevShape = 4 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 447, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 182, 7) %forehead outline
			drawfillarc (501, 290, 86, 70, 180, 0, skinClr) %chin
			drawarc (501, 290, 86, 70, 180, 0, 7) %chin outline
			Draw.Dot (415, 443, 7) %outline
			Draw.Dot (587, 291, 7) %outline
			Draw.Dot (587, 292, 7) %outline
			Draw.Dot (587, 293, 7) %outline
			Draw.Dot (587, 290, 7) %outline
			%round-oval face shape
		    elsif prevShape = 5 then
			drawfilloval (499, 370, 115, 125, skinClr)
			drawoval (499, 370, 115, 125, 7) %outline
		    end if
		    %Ears
		    drawfillarc (597, 370, 20, 30, 270, 90, skinClr) %right ear
		    drawarc (597, 370, 20, 30, 273, 95, 7)     %outline
		    drawfillarc (402, 370, 20, 30, 90, 270, skinClr)     %left ear
		    drawarc (402, 370, 20, 30, 90, 273, 7)     %outline
		    %point
		    for x : 0 .. 30
			drawline (596, 418, 581 + x, 395, skinClr)     %right ear
			drawline (403, 417, 388 + x, 394, skinClr)     %left ear
		    end for
		    drawline (596, 418, 611, 393, 7)     %outline right of right ear
		    drawline (596, 418, 591, 410, 7)     %small right point outline of right ear
		    drawline (403, 418, 388, 392, 7)     %outline left of left ear
		    drawline (403, 417, 408, 409, 7)     %small left point outline of left ear
		    %Hair
		    %this draws the long brown hair
		    if prevHair = 1 then
			drawfillarc (500, 450, 120, 50, 340, 200, 137) %scalp area
			drawfillbox (380, 200, 420, 450, 137) %left hair
			drawfillbox (580, 200, 620, 450, 137) %right hair
			drawarc (500, 450, 120, 50, 360, 185, 7) %scalp outline
			drawline (380, 200, 380, 450, 7) %left outline
			drawline (380, 200, 420, 200, 7) %left bottom outline
			drawline (420, 200, 420, 440, 7) %left inside outline
			drawline (420, 438, 500, 450, 7) %left top outline
			drawline (500, 450, 580, 438, 7) %left top outline
			drawline (580, 200, 580, 440, 7) %right inside outline
			drawline (580, 200, 620, 200, 7) %right bottom outline
			drawline (620, 200, 620, 450, 7) %right outline
			%this draws the short brown hair
		    elsif prevHair = 2 then
			drawfillbox (412, 440, 588, 510, 137)
			drawbox (412, 440, 588, 510, 7)
			%this draws the long black hair
		    elsif prevHair = 3 then
			drawfillarc (500, 430, 100, 80, 0, 180, 7) %scalp area
			drawfilloval (390, 325, 20, 125, 7) %left pigtail
			drawfilloval (610, 325, 20, 125, 7) %right pigtail
			Draw.ThickLine (398, 429, 398, 451, 10, 7) %left hair tie
			Draw.ThickLine (601, 429, 603, 451, 10, 7) %right hair tie
			Draw.ThickLine (398, 430, 398, 450, 8, 101) %left hair tie
			Draw.ThickLine (603, 430, 603, 450, 8, 101) %right hair tie
			%this draws the short black hair
		    elsif prevHair = 4 then
			drawfillarc (500, 430, 95, 80, 0, 180, 7)
			%this draws the blond hair that is in space buns
		    elsif prevHair = 5 then
			drawfillarc (500, 430, 95, 80, 0, 180, 139) %scalp area
			drawfilloval (399, 500, 40, 40, 139) %left bun
			drawfilloval (601, 500, 40, 40, 139) %right bun
			drawarc (500, 430, 95, 80, 0, 181, 7) %scalp outline
			drawline (405, 430, 595, 430, 7) %bottom of bang outline
			drawarc (399, 500, 40, 40, 343, 290, 7) %outline for left bun
			drawarc (601, 500, 40, 40, 248, 197, 7) %outline of the right bun
		    end if
		    %Draws the nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		end if
		prevEar := 4
		%this draws the attached lobes
	    elsif mousex >= 900 and mousex <= 986 and mousey >= 10 and mousey <= 40 and faceShape = true and (prevShape = 1 or prevShape = 5) then
		%Erase
		if prevEar not= 5 and prevShape = 1 or prevEar not= 5 and prevShape = 5 then
		    drawfillbox (237, 138, 762, 613, 0)
		    drawbox (237, 138, 762, 613, 7)
		    %Draws the previous face shape
		    %this draws the round face shape
		    if prevShape = 1 then
			drawfilloval (499, 370, 115, 115, skinClr)
			drawoval (499, 370, 115, 115, 7)
			%oval face shape
		    elsif prevShape = 2 then
			drawfilloval (499, 370, 100, 130, skinClr)
			drawoval (499, 370, 100, 130, 7)
			%distinct face shape
		    elsif prevShape = 3 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 445, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 180, 7) %forehead outline
			for x : 0 .. 172
			    drawline (501, 240, 415 + x, 290, skinClr) %chin
			end for
			drawline (501, 240, 415, 290, 7) %outline left of chin
			drawline (501, 240, 587, 290, 7) %outline of right chin
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 447, 7) %outline
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 445, 7) %outline
			%egg face shape
		    elsif prevShape = 4 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 447, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 182, 7) %forehead outline
			drawfillarc (501, 290, 86, 70, 180, 0, skinClr) %chin
			drawarc (501, 290, 86, 70, 180, 0, 7) %chin outline
			Draw.Dot (415, 443, 7) %outline
			Draw.Dot (587, 291, 7) %outline
			Draw.Dot (587, 292, 7) %outline
			Draw.Dot (587, 293, 7) %outline
			Draw.Dot (587, 290, 7) %outline
			%round-oval face shape
		    elsif prevShape = 5 then
			drawfilloval (499, 370, 115, 125, skinClr)
			drawoval (499, 370, 115, 125, 7) %outline
		    end if
		    %Ears
		    drawfillarc (610, 370, 20, 30, 270, 90, skinClr) %right ear
		    drawarc (610, 370, 20, 30, 273, 95, 7)     %outline of right ear
		    drawfillarc (389, 370, 20, 30, 90, 270, skinClr)     %left ear
		    drawarc (389, 370, 20, 30, 90, 273, 7)     %outline of left ear
		    %Hair
		    %this draws the long brown hair
		    if prevHair = 1 then
			drawfillarc (500, 450, 120, 50, 340, 200, 137) %scalp area
			drawfillbox (380, 200, 420, 450, 137) %left hair
			drawfillbox (580, 200, 620, 450, 137) %right hair
			drawarc (500, 450, 120, 50, 360, 185, 7) %scalp outline
			drawline (380, 200, 380, 450, 7) %left outline
			drawline (380, 200, 420, 200, 7) %left bottom outline
			drawline (420, 200, 420, 440, 7) %left inside outline
			drawline (420, 438, 500, 450, 7) %left top outline
			drawline (500, 450, 580, 438, 7) %left top outline
			drawline (580, 200, 580, 440, 7) %right inside outline
			drawline (580, 200, 620, 200, 7) %right bottom outline
			drawline (620, 200, 620, 450, 7) %right outline
			%this draws the short brown hair
		    elsif prevHair = 2 then
			drawfillbox (412, 440, 588, 510, 137)
			drawbox (412, 440, 588, 510, 7)
			%this draws the long black hair
		    elsif prevHair = 3 then
			drawfillarc (500, 430, 100, 80, 0, 180, 7) %scalp area
			drawfilloval (390, 325, 20, 125, 7) %left pigtail
			drawfilloval (610, 325, 20, 125, 7) %right pigtail
			Draw.ThickLine (398, 429, 398, 451, 10, 7) %left hair tie
			Draw.ThickLine (601, 429, 603, 451, 10, 7) %right hair tie
			Draw.ThickLine (398, 430, 398, 450, 8, 101) %left hair tie
			Draw.ThickLine (603, 430, 603, 450, 8, 101) %right hair tie
			%this draws the short black hair
		    elsif prevHair = 4 then
			drawfillarc (500, 430, 95, 80, 0, 180, 7)
			%this draws the blond hair that is in space buns
		    elsif prevHair = 5 then
			drawfillarc (500, 430, 95, 80, 0, 180, 139) %scalp area
			drawfilloval (399, 500, 40, 40, 139) %left bun
			drawfilloval (601, 500, 40, 40, 139) %right bun
			drawarc (500, 430, 95, 80, 0, 181, 7) %scalp outline
			drawline (405, 430, 595, 430, 7) %bottom of bang outline
			drawarc (399, 500, 40, 40, 343, 290, 7) %outline for left bun
			drawarc (601, 500, 40, 40, 248, 197, 7) %outline of the right bun
		    end if
		    %Draws the nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		end if
		prevEar := 5
	    elsif mousex >= 900 and mousex <= 986 and mousey >= 10 and mousey <= 40 and faceShape = true and (prevShape = 3 or prevShape = 4) then
		%Erase
		if prevEar not= 5 and prevShape = 3 or prevEar not= 5 and prevShape = 4 then
		    drawfillbox (237, 138, 762, 613, 0)
		    drawbox (237, 138, 762, 613, 7)
		    %Draws the previous face shape
		    %this draws the round face shape
		    if prevShape = 1 then
			drawfilloval (499, 370, 115, 115, skinClr)
			drawoval (499, 370, 115, 115, 7)
			%oval face shape
		    elsif prevShape = 2 then
			drawfilloval (499, 370, 100, 130, skinClr)
			drawoval (499, 370, 100, 130, 7)
			%distinct face shape
		    elsif prevShape = 3 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 445, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 180, 7) %forehead outline
			for x : 0 .. 172
			    drawline (501, 240, 415 + x, 290, skinClr) %chin
			end for
			drawline (501, 240, 415, 290, 7) %outline left of chin
			drawline (501, 240, 587, 290, 7) %outline of right chin
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 447, 7) %outline
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 445, 7) %outline
			%egg face shape
		    elsif prevShape = 4 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 447, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 182, 7) %forehead outline
			drawfillarc (501, 290, 86, 70, 180, 0, skinClr) %chin
			drawarc (501, 290, 86, 70, 180, 0, 7) %chin outline
			Draw.Dot (415, 443, 7) %outline
			Draw.Dot (587, 291, 7) %outline
			Draw.Dot (587, 292, 7) %outline
			Draw.Dot (587, 293, 7) %outline
			Draw.Dot (587, 290, 7) %outline
			%round-oval face shape
		    elsif prevShape = 5 then
			drawfilloval (499, 370, 115, 125, skinClr)
			drawoval (499, 370, 115, 125, 7) %outline
		    end if
		    %Ears
		    drawfillarc (587, 370, 20, 30, 270, 90, skinClr) %right ear
		    drawarc (587, 370, 20, 30, 273, 95, 7)     %outline of right ear
		    drawfillarc (416, 370, 20, 30, 90, 270, skinClr)     %left ear
		    drawarc (416, 370, 20, 30, 90, 273, 7)     %outline of left ear
		    %Hair
		    %this draws the long brown hair
		    if prevHair = 1 then
			drawfillarc (500, 450, 120, 50, 340, 200, 137) %scalp area
			drawfillbox (380, 200, 420, 450, 137) %left hair
			drawfillbox (580, 200, 620, 450, 137) %right hair
			drawarc (500, 450, 120, 50, 360, 185, 7) %scalp outline
			drawline (380, 200, 380, 450, 7) %left outline
			drawline (380, 200, 420, 200, 7) %left bottom outline
			drawline (420, 200, 420, 440, 7) %left inside outline
			drawline (420, 438, 500, 450, 7) %left top outline
			drawline (500, 450, 580, 438, 7) %left top outline
			drawline (580, 200, 580, 440, 7) %right inside outline
			drawline (580, 200, 620, 200, 7) %right bottom outline
			drawline (620, 200, 620, 450, 7) %right outline
			%this draws the short brown hair
		    elsif prevHair = 2 then
			drawfillbox (412, 440, 588, 510, 137)
			drawbox (412, 440, 588, 510, 7)
			%this draws the long black hair
		    elsif prevHair = 3 then
			drawfillarc (500, 430, 100, 80, 0, 180, 7) %scalp area
			drawfilloval (390, 325, 20, 125, 7) %left pigtail
			drawfilloval (610, 325, 20, 125, 7) %right pigtail
			Draw.ThickLine (398, 429, 398, 451, 10, 7) %left hair tie
			Draw.ThickLine (601, 429, 603, 451, 10, 7) %right hair tie
			Draw.ThickLine (398, 430, 398, 450, 8, 101) %left hair tie
			Draw.ThickLine (603, 430, 603, 450, 8, 101) %right hair tie
			%this draws the short black hair
		    elsif prevHair = 4 then
			drawfillarc (500, 430, 95, 80, 0, 180, 7)
			%this draws the blond hair that is in space buns
		    elsif prevHair = 5 then
			drawfillarc (500, 430, 95, 80, 0, 180, 139) %scalp area
			drawfilloval (399, 500, 40, 40, 139) %left bun
			drawfilloval (601, 500, 40, 40, 139) %right bun
			drawarc (500, 430, 95, 80, 0, 181, 7) %scalp outline
			drawline (405, 430, 595, 430, 7) %bottom of bang outline
			drawarc (399, 500, 40, 40, 343, 290, 7) %outline for left bun
			drawarc (601, 500, 40, 40, 248, 197, 7) %outline of the right bun
		    end if
		    %Draws the nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		end if
		prevEar := 5
	    elsif mousex >= 900 and mousex <= 986 and mousey >= 10 and mousey <= 40 and faceShape = true then
		%Erase
		if prevEar not= 5 and prevShape = 2 then
		    drawfillbox (237, 138, 762, 613, 0)
		    drawbox (237, 138, 762, 613, 7)
		    %Draws the previous face shape
		    %this draws the round face shape
		    if prevShape = 1 then
			drawfilloval (499, 370, 115, 115, skinClr)
			drawoval (499, 370, 115, 115, 7)
			%oval face shape
		    elsif prevShape = 2 then
			drawfilloval (499, 370, 100, 130, skinClr)
			drawoval (499, 370, 100, 130, 7)
			%distinct face shape
		    elsif prevShape = 3 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 445, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 180, 7) %forehead outline
			for x : 0 .. 172
			    drawline (501, 240, 415 + x, 290, skinClr) %chin
			end for
			drawline (501, 240, 415, 290, 7) %outline left of chin
			drawline (501, 240, 587, 290, 7) %outline of right chin
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 447, 7) %outline
			Draw.Dot (415, 446, 7) %outline
			Draw.Dot (415, 445, 7) %outline
			%egg face shape
		    elsif prevShape = 4 then
			drawfillbox (415, 290, 587, 445, skinClr) %middle of face
			drawline (415, 290, 415, 447, 7) %left straight outline
			drawline (587, 290, 587, 445, 7) %right straight outline
			drawfillarc (501, 445, 86, 50, 0, 180, skinClr) %forehead
			drawarc (501, 445, 86, 50, 0, 182, 7) %forehead outline
			drawfillarc (501, 290, 86, 70, 180, 0, skinClr) %chin
			drawarc (501, 290, 86, 70, 180, 0, 7) %chin outline
			Draw.Dot (415, 443, 7) %outline
			Draw.Dot (587, 291, 7) %outline
			Draw.Dot (587, 292, 7) %outline
			Draw.Dot (587, 293, 7) %outline
			Draw.Dot (587, 290, 7) %outline
			%round-oval face shape
		    elsif prevShape = 5 then
			drawfilloval (499, 370, 115, 125, skinClr)
			drawoval (499, 370, 115, 125, 7) %outline
		    end if
		    %Ears
		    drawfillarc (595, 370, 20, 30, 270, 90, skinClr) %right ear
		    drawarc (595, 370, 20, 30, 273, 95, 7)     %outline of right ear
		    drawfillarc (404, 370, 20, 30, 90, 270, skinClr)     %left ear
		    drawarc (404, 370, 20, 30, 90, 273, 7)     %outline of left ear
		    %Hair
		    %this draws the long brown hair
		    if prevHair = 1 then
			drawfillarc (500, 450, 120, 50, 340, 200, 137) %scalp area
			drawfillbox (380, 200, 420, 450, 137) %left hair
			drawfillbox (580, 200, 620, 450, 137) %right hair
			drawarc (500, 450, 120, 50, 360, 185, 7) %scalp outline
			drawline (380, 200, 380, 450, 7) %left outline
			drawline (380, 200, 420, 200, 7) %left bottom outline
			drawline (420, 200, 420, 440, 7) %left inside outline
			drawline (420, 438, 500, 450, 7) %left top outline
			drawline (500, 450, 580, 438, 7) %left top outline
			drawline (580, 200, 580, 440, 7) %right inside outline
			drawline (580, 200, 620, 200, 7) %right bottom outline
			drawline (620, 200, 620, 450, 7) %right outline
			%this draws the short brown hair
		    elsif prevHair = 2 then
			drawfillbox (412, 440, 588, 510, 137)
			drawbox (412, 440, 588, 510, 7)
			%this draws the long black hair
		    elsif prevHair = 3 then
			drawfillarc (500, 430, 100, 80, 0, 180, 7) %scalp area
			drawfilloval (390, 325, 20, 125, 7) %left pigtail
			drawfilloval (610, 325, 20, 125, 7) %right pigtail
			Draw.ThickLine (398, 429, 398, 451, 10, 7) %left hair tie
			Draw.ThickLine (601, 429, 603, 451, 10, 7) %right hair tie
			Draw.ThickLine (398, 430, 398, 450, 8, 101) %left hair tie
			Draw.ThickLine (603, 430, 603, 450, 8, 101) %right hair tie
			%this draws the short black hair
		    elsif prevHair = 4 then
			drawfillarc (500, 430, 95, 80, 0, 180, 7)
			%this draws the blond hair that is in space buns
		    elsif prevHair = 5 then
			drawfillarc (500, 430, 95, 80, 0, 180, 139) %scalp area
			drawfilloval (399, 500, 40, 40, 139) %left bun
			drawfilloval (601, 500, 40, 40, 139) %right bun
			drawarc (500, 430, 95, 80, 0, 181, 7) %scalp outline
			drawline (405, 430, 595, 430, 7) %bottom of bang outline
			drawarc (399, 500, 40, 40, 343, 290, 7) %outline for left bun
			drawarc (601, 500, 40, 40, 248, 197, 7) %outline of the right bun
		    end if
		    %Draws the nose shape
		    %this draws the circle nose
		    if prevNose = 1 then
			drawoval (500, 350, 15, 15, 7)
			%this draws the oval nose
		    elsif prevNose = 2 then
			drawoval (500, 350, 13, 20, 7)
			%this draws the triangle nose
		    elsif prevNose = 3 then
			drawline (500, 360, 510, 340, 7) % right line
			drawline (510, 340, 490, 340, 7) %bottom line
			drawline (490, 340, 500, 360, 7) %left line
			%this draws the rectangle nose
		    elsif prevNose = 4 then
			drawbox (495, 340, 511, 360, 7)
		    elsif prevNose = 5 then
			%this draws the outline nose
			drawline (490, 340, 500, 360, 7) %left line
			drawline (510, 340, 490, 340, 7) %bottom line
		    end if
		    %Draws the previous eye shape
		    %this draws the blue wide eyes
		    if prevEye = 1 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 78) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 78) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the brown narrow eyes
		    elsif prevEye = 2 then
			%Left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 137) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%Right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 137) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
			%this draws the brown wide eyes
		    elsif prevEye = 3 then
			%Left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 137) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%Right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 137) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the green wide eyes
		    elsif prevEye = 4 then
			%left eye
			drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
			drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (450, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (450, 393, 13, 13, 143) %iris
			drawfilloval (450, 393, 6, 6, black) %pupil
			%right eye
			drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
			drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
			drawarc (550, 380, 23, 27, 0, 180, 7) %outline
			drawfilloval (550, 393, 13, 13, 143) %iris
			drawfilloval (550, 393, 6, 6, black) %pupil
			%this draws the hazel narrow eyes
		    elsif prevEye = 5 then
			%left eye
			drawfilloval (450, 393, 17, 9, 0) %white part
			drawoval (450, 393, 17, 9, 7) %outline
			drawfilloval (450, 393, 8, 8, 115) %iris
			drawfilloval (450, 393, 3, 3, 7) %pupil
			%right eye
			drawfilloval (550, 393, 17, 9, 0) %white part
			drawoval (550, 393, 17, 9, 7) %outline
			drawfilloval (550, 393, 8, 8, 115) %iris
			drawfilloval (550, 393, 3, 3, 7) %pupil
		    end if
		    %Draws the previous mouth shape
		    %this draws the big mouth
		    if prevMth = 1 then
			drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
			drawfilloval (480, 300, 20, 10, 4) % left of top lip
			drawfilloval (520, 300, 20, 10, 4) %right o top lip
			drawarc (500, 300, 40, 15, 180, 0, 7) %bottom outline
			drawarc (520, 300, 20, 10, 0, 180, 7) %top right outline
			drawarc (480, 300, 20, 10, 0, 180, 7) %top left outline
			Draw.ThickLine (460, 300, 540, 300, 2, 7) %middle of the mouth
			%this draws the thin mouth
		    elsif prevMth = 2 then
			drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
			drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
			drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
			drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
			drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
			drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
			Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
			%this draws the smile mouth
		    elsif prevMth = 3 then
			drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
			drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
			drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
			drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
			drawline (465, 312, 475, 312, 7) %left horizontal outline
			drawline (525, 312, 535, 312, 7) %right horizontal outline
			%this draws the frown mouth
		    elsif prevMth = 4 then
			drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
			drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
			drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
			drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
			drawline (465, 292, 475, 292, 7) %horizontal outline
			drawline (525, 290, 535, 290, 7) %horizontal outline right
			%this draws the shocked mouth
		    elsif prevMth = 5 then
			drawfilloval (500, 290, 20, 26, 12) %red lip area
			drawfilloval (500, 290, 10, 20, 4) %inside of mouth
			drawoval (500, 290, 20, 27, 7) %outline
		    end if
		    %Draws the previous eyebrow shape
		    %this draws the thick eyebrows
		    if prevBrow = 1 then
			%Left eyebrow
			drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
			%Right eyebrow
			drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
			drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
			prevBrow := 1
			%this draws the thin eyebrows
		    elsif prevBrow = 2 then
			Draw.ThickLine (435, 420, 464, 420, 6, 7) %left eyebrow
			Draw.ThickLine (538, 420, 567, 420, 6, 7) %right eyebrow
			prevBrow := 2
			%this draws the triangle eyebrows
		    elsif prevBrow = 3 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
			prevBrow := 3
			%this draws the tilted up eyebrows
		    elsif prevBrow = 4 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
			%Right eyebrow
			Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
			%this draws the tilted down eyebrows
		    elsif prevBrow = 5 then
			%Left eyebrow
			Draw.ThickLine (450, 425, 470, 405, 6, 7)
			%Right eyebrow
			Draw.ThickLine (550, 425, 530, 405, 6, 7)
			prevBrow := 5
		    end if
		end if
		prevEar := 5
		%%%%%%%%%%%%%%%%%%%EYES%%%%%%%%%%%%%%%%%%%%%%%%
		%this draws the eyes
		%this draws the blue wide eyes
	    elsif mousex >= 18 and mousex <= 98 and mousey >= 90 and mousey <= 120 and faceShape = true then
		%Erase
		if prevEye ~= 1 then
		    %left eye
		    drawfillarc (450, 379, 24, 28, 0, 180, skinClr)
		    %right eye
		    drawfillarc (550, 379, 24, 28, 0, 180, skinClr)
		    %This draws the eyes
		    %Left eye
		    drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
		    drawfillarc (450, 380, 23, 27, 0, 180, 0)     %white part of the eye
		    drawarc (450, 380, 23, 27, 0, 180, 7)     %outline
		    drawfilloval (450, 393, 13, 13, 78)     %iris
		    drawfilloval (450, 393, 6, 6, black)     %pupil
		    %Right eye
		    drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
		    drawfillarc (550, 380, 23, 27, 0, 180, 0)     %white part of the eye
		    drawarc (550, 380, 23, 27, 0, 180, 7)     %outline
		    drawfilloval (550, 393, 13, 13, 78)     %iris
		    drawfilloval (550, 393, 6, 6, black)     %pupil
		end if
		prevEye := 1
		%this draws the brown narrow eyes
	    elsif mousex >= 116 and mousex <= 196 and mousey >= 90 and mousey <= 120 and faceShape = true then
		%Erase
		if prevEye ~= 2 then
		    %left eye
		    drawfillarc (450, 379, 24, 28, 0, 180, skinClr)
		    %right eye
		    drawfillarc (550, 379, 24, 28, 0, 180, skinClr)
		    %This draws the eyes
		    %Left eye
		    drawfilloval (450, 393, 17, 9, 0)     %white part
		    drawoval (450, 393, 17, 9, 7)     %outline
		    drawfilloval (450, 393, 8, 8, 137)     %iris
		    drawfilloval (450, 393, 3, 3, 7)     %pupil
		    %Right eye
		    drawfilloval (550, 393, 17, 9, 0)     %white part
		    drawoval (550, 393, 17, 9, 7)     %outline
		    drawfilloval (550, 393, 8, 8, 137)     %iris
		    drawfilloval (550, 393, 3, 3, 7)     %pupil
		end if
		prevEye := 2
		%this draws the brown wide eyes
	    elsif mousex >= 214 and mousex <= 294 and mousey >= 90 and mousey <= 120 and faceShape = true then
		%Erase
		if prevEye ~= 3 then
		    %left eye
		    drawfillarc (450, 379, 24, 28, 0, 180, skinClr)
		    %right eye
		    drawfillarc (550, 379, 24, 28, 0, 180, skinClr)
		    %This draws the eyes
		    %Left eye
		    drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
		    drawfillarc (450, 380, 23, 27, 0, 180, 0)     %white part of the eye
		    drawarc (450, 380, 23, 27, 0, 180, 7)     %outline
		    drawfilloval (450, 393, 13, 13, 137)     %iris
		    drawfilloval (450, 393, 6, 6, black)     %pupil
		    %Right eye
		    drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
		    drawfillarc (550, 380, 23, 27, 0, 180, 0)     %white part of the eye
		    drawarc (550, 380, 23, 27, 0, 180, 7)     %outline
		    drawfilloval (550, 393, 13, 13, 137)     %iris
		    drawfilloval (550, 393, 6, 6, black)     %pupil
		end if
		prevEye := 3
		%this draws the green wide eyes
	    elsif mousex >= 312 and mousex <= 392 and mousey >= 90 and mousey <= 120 and faceShape = true then
		%Erase
		if prevEye ~= 4 then
		    %left eye
		    drawfillarc (450, 379, 24, 28, 0, 180, skinClr)
		    %right eye
		    drawfillarc (550, 379, 24, 28, 0, 180, skinClr)
		    %This draws the eyes
		    %left eye
		    drawfillarc (450, 379, 24, 28, 0, 180, 7) % bottom outline
		    drawfillarc (450, 380, 23, 27, 0, 180, 0) %white part of the eye
		    drawarc (450, 380, 23, 27, 0, 180, 7) %outline
		    drawfilloval (450, 393, 13, 13, 143) %iris
		    drawfilloval (450, 393, 6, 6, black) %pupil
		    %right eye
		    drawfillarc (550, 379, 24, 28, 0, 180, 7) %bottom outline
		    drawfillarc (550, 380, 23, 27, 0, 180, 0) %white part of the eye
		    drawarc (550, 380, 23, 27, 0, 180, 7) %outline
		    drawfilloval (550, 393, 13, 13, 143) %iris
		    drawfilloval (550, 393, 6, 6, black) %pupil
		end if
		prevEye := 4
		%this draws the hazel narrow eyes
	    elsif mousex >= 410 and mousex <= 490 and mousey >= 90 and mousey <= 120 and faceShape = true then
		%Erase
		if prevEye ~= 5 then
		    %left eye
		    drawfillarc (450, 379, 24, 28, 0, 180, skinClr)
		    %right eye
		    drawfillarc (550, 379, 24, 28, 0, 180, skinClr)
		    %This draws the eyes
		    %left eye
		    drawfilloval (450, 393, 17, 9, 0) %white part
		    drawoval (450, 393, 17, 9, 7) %outline
		    drawfilloval (450, 393, 8, 8, 115) %iris
		    drawfilloval (450, 393, 3, 3, 7) %pupil
		    %right eye
		    drawfilloval (550, 393, 17, 9, 0) %white part
		    drawoval (550, 393, 17, 9, 7) %outline
		    drawfilloval (550, 393, 8, 8, 115) %iris
		    drawfilloval (550, 393, 3, 3, 7) %pupil
		end if
		prevEye := 5
		%%%%%%%%%%%%%%%%%%MOUTH%%%%%%%%%%%%%%%%%%
		%this draws the mouths
	    elsif mousex >= 508 and mousex <= 588 and mousey >= 50 and mousey <= 80 and faceShape = true then
		if prevMth ~= 1 then
		    %This is the erase
		    drawfillbox (460, 263, 540, 319, skinClr)
		    %This is the mouth
		    drawfillarc (500, 300, 40, 15, 180, 0, 4) %bottom of lip
		    drawfilloval (480, 300, 20, 10, 4)     % left of top lip
		    drawfilloval (520, 300, 20, 10, 4)     %right o top lip
		    drawarc (500, 300, 40, 15, 180, 0, 7)     %bottom outline
		    drawarc (520, 300, 20, 10, 0, 180, 7)     %top right outline
		    drawarc (480, 300, 20, 10, 0, 180, 7)     %top left outline
		    Draw.ThickLine (460, 300, 540, 300, 2, 7)     %middle of the mouth
		end if
		prevMth := 1
		%thin mouth
	    elsif mousex >= 606 and mousex <= 686 and mousey >= 50 and mousey <= 80 and faceShape = true then
		if prevMth ~= 2 then
		    %This is the erase
		    drawfillbox (460, 263, 540, 319, skinClr)
		    %This is the mouth
		    drawfillarc (500, 300, 30, 12, 180, 0, 4) %bottom of lip
		    drawfillarc (485, 300, 15, 8, 0, 180, 4) %left upper lip
		    drawfillarc (515, 300, 15, 8, 0, 180, 4) %right upper lip
		    drawarc (500, 300, 30, 12, 180, 0, 7) %bottom of lip outline
		    drawarc (485, 300, 15, 8, 0, 180, 7) %left upper lip outline
		    drawarc (515, 300, 15, 8, 0, 180, 7) %right upper lip outline
		    Draw.ThickLine (470, 300, 530, 300, 2, 7) %middle of the mouth
		end if
		prevMth := 2
		%smiling mouth
	    elsif mousex >= 704 and mousex <= 784 and mousey >= 50 and mousey <= 80 and faceShape = true then
		if prevMth ~= 3 then
		    %This is the erase
		    drawfillbox (460, 263, 540, 319, skinClr)
		    %This is the mouth
		    drawfillarc (500, 312, 35, 25, 180, 0, 4) %lips
		    drawfillarc (500, 312, 25, 15, 180, 0, skinClr) %erase
		    drawarc (500, 312, 35, 25, 180, 0, 7) % top lip outline
		    drawarc (500, 312, 25, 15, 180, 0, 7) %bottom lip outline
		    drawline (465, 312, 475, 312, 7) %left horizontal outline
		    drawline (525, 312, 535, 312, 7) %right horizontal outline
		end if
		prevMth := 3
		%frowning mouth
	    elsif mousex >= 802 and mousex <= 882 and mousey >= 50 and mousey <= 80 and faceShape = true then
		if prevMth ~= 4 then
		    %This is the erase
		    drawfillbox (460, 263, 540, 319, skinClr)
		    %This is the mouth
		    drawfillarc (500, 290, 35, 25, 0, 180, 4) %lips
		    drawfillarc (500, 290, 25, 15, 0, 180, skinClr) %erase
		    drawarc (500, 290, 35, 25, 0, 180, 7) % top lip outline
		    drawarc (500, 290, 25, 15, 0, 180, 7) %bottom lip outline
		    drawline (465, 292, 475, 292, 7) %horizontal outline
		    drawline (525, 290, 535, 290, 7) %horizontal outline right
		end if
		prevMth := 4
		%shocked mouth
	    elsif mousex >= 900 and mousex <= 986 and mousey >= 50 and mousey <= 80 and faceShape = true then
		if prevMth ~= 5 then
		    %This is the erase
		    drawfillbox (460, 263, 540, 319, skinClr)
		    %This is the mouth
		    drawfilloval (500, 290, 20, 26, 12) %red lip area
		    drawfilloval (500, 290, 10, 20, 4) %inside of mouth
		    drawoval (500, 290, 20, 27, 7) %outline
		end if
		prevMth := 5
		%%%%%%%%%%%%%%%%EYEBROWS%%%%%%%%%%%%%%%%%
		%this draws the thick eyebrows
	    elsif mousex >= 508 and mousex <= 588 and mousey >= 90 and mousey <= 120 and faceShape = true then
		%This is the erase
		if prevBrow ~= 1 then
		    %Left eyebrow erase
		    Draw.ThickLine (450, 425, 470, 405, 10, skinClr)
		    Draw.ThickLine (450, 425, 430, 405, 10, skinClr)
		    drawfillbox (425, 410, 475, 430, skinClr)
		    %Right eyebrow erase
		    Draw.ThickLine (550, 425, 530, 405, 10, skinClr)
		    Draw.ThickLine (550, 425, 570, 405, 10, skinClr)
		    drawfillbox (525, 410, 575, 430, skinClr)
		    %this draws the eyebrows
		    %Left eyebrow
		    drawfillarc (450, 410, 25, 10, 0, 180, 7) %actual hair
		    drawfillarc (450, 410, 20, 5, 0, 180, skinClr) %erase
		    %Right eyebrow
		    drawfillarc (550, 410, 25, 10, 0, 180, 7) %actual hair
		    drawfillarc (550, 410, 20, 5, 0, 180, skinClr) %erase
		    prevBrow := 1
		end if
		%this draws the thin eyebrows
	    elsif mousex >= 606 and mousex <= 686 and mousey >= 90 and mousey <= 120 and faceShape = true then
		if prevBrow ~= 2 then
		    %erase
		    %Left eyebrow erase
		    Draw.ThickLine (450, 425, 470, 405, 10, skinClr)
		    Draw.ThickLine (450, 425, 430, 405, 10, skinClr)
		    drawfillbox (425, 410, 475, 430, skinClr)
		    %Right eyebrow erase
		    Draw.ThickLine (550, 425, 530, 405, 10, skinClr)
		    Draw.ThickLine (550, 425, 570, 405, 10, skinClr)
		    drawfillbox (525, 410, 575, 430, skinClr)
		    %this draws the eyebrows
		    Draw.ThickLine (435, 420, 464, 420, 6, 7)     %left eyebrow
		    Draw.ThickLine (538, 420, 567, 420, 6, 7)     %right eyebrow
		end if
		prevBrow := 2
		%this draws the triangle eyebrows
	    elsif mousex >= 704 and mousex <= 784 and mousey >= 90 and mousey <= 120 and faceShape = true then
		if prevBrow ~= 3 then
		    %erase
		    %Left eyebrow erase
		    Draw.ThickLine (450, 425, 470, 405, 10, skinClr)
		    Draw.ThickLine (450, 425, 430, 405, 10, skinClr)
		    drawfillbox (425, 410, 475, 430, skinClr)
		    %Right eyebrow erase
		    Draw.ThickLine (550, 425, 530, 405, 10, skinClr)
		    Draw.ThickLine (550, 425, 570, 405, 10, skinClr)
		    drawfillbox (525, 410, 575, 430, skinClr)
		    %eyebrows
		    %Left eyebrow
		    Draw.ThickLine (450, 425, 470, 405, 6, 7) %line going down
		    Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
		    %Right eyebrow
		    Draw.ThickLine (550, 425, 530, 405, 6, 7) %line going down
		    Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up(/)
		end if
		prevBrow := 3
		%this draws the tilted up eyebrows
	    elsif mousex >= 802 and mousex <= 882 and mousey >= 90 and mousey <= 120 and faceShape = true then
		if prevBrow ~= 4 then
		    %erase
		    %Left eyebrow erase
		    Draw.ThickLine (450, 425, 470, 405, 10, skinClr)
		    Draw.ThickLine (450, 425, 430, 405, 10, skinClr)
		    drawfillbox (425, 410, 475, 430, skinClr)
		    %Right eyebrow erase
		    Draw.ThickLine (550, 425, 530, 405, 10, skinClr)
		    Draw.ThickLine (550, 425, 570, 405, 10, skinClr)
		    drawfillbox (525, 410, 575, 430, skinClr)
		    %eyebrows
		    %Left eyebrow
		    Draw.ThickLine (450, 425, 430, 405, 6, 7) %line going up(/)
		    %Right eyebrow
		    Draw.ThickLine (550, 425, 570, 405, 6, 7) %line going up
		end if
		prevBrow := 4
		%this draws the tilted down eyebrows
	    elsif mousex >= 900 and mousex <= 986 and mousey >= 90 and mousey <= 120 and faceShape = true then
		if prevBrow ~= 5 then
		    %erase
		    %Left eyebrow erase
		    Draw.ThickLine (450, 425, 470, 405, 10, skinClr)
		    Draw.ThickLine (450, 425, 430, 405, 10, skinClr)
		    drawfillbox (425, 410, 475, 430, skinClr)
		    %Right eyebrow erase
		    Draw.ThickLine (550, 425, 530, 405, 10, skinClr)
		    Draw.ThickLine (550, 425, 570, 405, 10, skinClr)
		    drawfillbox (525, 410, 575, 430, skinClr)
		    %eyebrows
		    %Left eyebrow
		    Draw.ThickLine (450, 425, 470, 405, 6, 7)
		    %Right eyebrow
		    Draw.ThickLine (550, 425, 530, 405, 6, 7)
		end if
		prevBrow := 5
		%%%%%%%%%%%%%%%%SKIN COLORS%%%%%%%%%%%%%%
		%top left box
	    elsif mousex >= 800 and mousex <= 850 and mousey >= 470 and mousey <= 520 and faceShape = true then
		skinClr := 90
		drawfill (500, 370, skinClr, 7)
		drawfill (500, 350, skinClr, 7)
		%top middle box
	    elsif mousex >= 850 and mousex <= 900 and mousey >= 470 and mousey <= 520 and faceShape = true then
		skinClr := 91
		drawfill (500, 370, skinClr, 7)
		drawfill (500, 350, skinClr, 7)
		%top right box
	    elsif mousex >= 900 and mousex <= 950 and mousey >= 470 and mousey <= 520 and faceShape = true then
		skinClr := 67
		drawfill (500, 370, skinClr, 7)
		drawfill (500, 350, skinClr, 7)
		%middle left box
	    elsif mousex >= 800 and mousex <= 850 and mousey >= 420 and mousey <= 470 and faceShape = true then
		skinClr := 92
		drawfill (500, 370, skinClr, 7)
		drawfill (500, 350, skinClr, 7)
		%middle middle box
	    elsif mousex >= 850 and mousex <= 900 and mousey >= 420 and mousey <= 470 and faceShape = true then
		skinClr := 89
		drawfill (500, 370, skinClr, 7)
		drawfill (500, 350, skinClr, 7)
		%middle right box
	    elsif mousex >= 900 and mousex <= 950 and mousey >= 420 and mousey <= 470 and faceShape = true then
		skinClr := 161
		drawfill (500, 370, skinClr, 7)
		drawfill (500, 350, skinClr, 7)
		%top left box
	    elsif mousex >= 800 and mousex <= 850 and mousey >= 370 and mousey <= 420 and faceShape = true then
		skinClr := 138
		drawfill (500, 370, skinClr, 7)
		drawfill (500, 350, skinClr, 7)
		%top middle box
	    elsif mousex >= 850 and mousex <= 900 and mousey >= 370 and mousey <= 420 and faceShape = true then
		skinClr := 114
		drawfill (500, 370, skinClr, 7)
		drawfill (500, 350, skinClr, 7)
		%top right box
	    elsif mousex >= 900 and mousex <= 950 and mousey >= 370 and mousey <= 420 and faceShape = true then
		skinClr := 137
		drawfill (500, 370, skinClr, 7)
		drawfill (500, 350, skinClr, 7)
		%%%%%%%%%%%%%%%%RESET BUTTON%%%%%%%%%%%%%%%%%
	    elsif mousex >= 815 and mousex <= 935 and mousey >= 600 and mousey <= 650 and faceShape = true then
		display
		%%%%%%%%%%%%%%%%MAINMENU%%%%%%%%%%%%%%%%%
	    elsif mousex >= 58 and mousex <= 178 and mousey >= 600 and mousey <= 650 then         %Main Menu
		exit
	    end if
	end if
    end loop
    mainMenu
end display

%this will show the goodbye message when the user clicks "exit"
procedure goodbye
    title
    locate (15, 47)
    put "Thanks for using Build a Face!"
    locate (16, 42)
    put "This program was created by Alyssa Wang."
    delay (4000)
    for x : 0 .. 700
	drawfilloval (500, 337, x, x, 7) %creates the black oval that will cover the screen slowly
	delay (10)
    end for
    Music.PlayFileStop
    Window.Close (mainWin)
end goodbye

%Main Program
introduction
loop
    exit when GUI.ProcessEvent
end loop
goodbye
%End program


