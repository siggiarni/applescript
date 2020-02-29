tell application "Finder"
	get the bounds of the window of the desktop
	set the bounds of the front window to Â
		{((3rd item of the result) / 2), 0, ((3rd item of the result)), (4th item of the result)}
end tell