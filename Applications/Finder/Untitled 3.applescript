tell application "Finder"
	
	set i to count (every Finder window where visible is true)
	
	get the bounds of the window of the desktop
	
	repeat with i from 1 to i
		
		set the position of window i to Â
			{((1st item of the result) + 20), ((2nd item of the result) + 40)}
		
		get the bounds of Finder window i
		
		set the bounds of window i to Â
			{(1st item of the result), (2nd item of the result), Â
				(800 + 20), (600 + 20)}
		
		get the position of Finder window i
		
	end repeat
	
	select Finder window i
	
end tell