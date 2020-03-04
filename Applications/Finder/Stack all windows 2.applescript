use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Finder"
	
	set windowWidth to 800
	set windowHeight to 600
	set offsetVertical to 20
	set offsetHorizontal to 0
	set offsetWindow to 25
	
	set i to count (every Finder window where visible is true)
	
	set the bounds of window 1 to Â
		{0, 0, windowWidth, windowHeight}
	get the name of window 1
	
	repeat with i from 2 to i
		
		set x to i - 1
		get the name of window i
		set the bounds of window i to Â
			{Â
				(offsetHorizontal + (offsetWindow * x)), Â
				(offsetVertical + (offsetWindow * x)), Â
				(windowWidth + (offsetWindow * x)), Â
				(windowHeight + (offsetWindow * i))}
		
		select Finder window i
	end repeat
end tell
