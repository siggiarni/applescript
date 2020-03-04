use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Finder"
	
	set windowWidth to 800
	set windowHeight to 600
	
	set offsetVertical to 35
	set offsetHorizontal to 15
	set offsetWindow to 5
	
	set i to count (every Finder window where visible is true)
	
	--get the bounds of the window of the desktop
	
	log window 1
	set the bounds of window 1 to Â
		{0, 0, windowWidth, windowHeight}
	
	
	
	repeat with i from 2 to i
		
		log window i
		
		-- get the bounds of Finder window i		
		-- get the position of Finder window i
		get the name of window i
		
		-- x, y, width, height
		set the bounds of window i to Â
			{Â
				(offsetHorizontal + (offsetWindow * i)), Â
				(offsetVertical + (offsetWindow * i)), Â
				(windowWidth + (offsetWindow * i)), Â
				(windowHeight + (offsetWindow * i))}
		
		select Finder window i
		
	end repeat
	
end tell
