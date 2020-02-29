tell application "Finder"
	get the bounds of the window of the desktop
	-- x, y, width, height
	set the bounds of the front window to Â
		{0, 0, ((3rd item of the result) / 2), (4th item of the result)}
end tell