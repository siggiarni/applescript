use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Finder"
	
	set windowWidth to 800
	set windowHeight to 600
	
	set offsetVertical to 20
	set offsetHorizontal to 20
	set offsetWindow to 25
	
	set i to count (every Finder window where visible is true)
	
	--get the bounds of the window of the desktop
	
	
	
	repeat with i from 1 to i
		
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
