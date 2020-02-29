tell application "Finder"
	
	set i to count (every Finder window where visible is true)
	
	set boundLeft to 0
	set boundTop to 0
	set boundWidth to 800
	set boundHeight to 600
	set offsetLeft to 20
	set offsetTop to 25
	
	repeat with i from 1 to i
		-- Position Finder window
		set the bounds of Finder window i to Â
			{(boundLeft), (boundTop), (boundWidth), (boundHeight)}
		-- Offset Finder window
		set the position of Finder window i to Â
			{((boundLeft) + offsetLeft), ((boundTop) + offsetTop)}
		select Finder window i
		-- Increment the position
		set boundLeft to (boundLeft + offsetLeft)
		set boundTop to (boundTop + offsetTop)
		set boundWidth to (boundWidth + offsetLeft)
		set boundHeight to (boundHeight + offsetTop)
	end repeat
	
end tell