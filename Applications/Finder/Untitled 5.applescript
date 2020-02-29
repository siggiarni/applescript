tell application "Finder"
	
	set i to count (every Finder window where visible is true)
	
	get the bounds of the window of the desktop
	
	repeat with i from 1 to i
		
		set the bounds of window i to Â
			{((1st item of the result) + 20), ((2nd item of the result) + 40), 800, 600}
		
		get the bounds of Finder window i
		
		--tell Finder window i
		--say i
		--end tell
		
	end repeat
	
	
	
end tell