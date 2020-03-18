use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Finder"
	
	get the bounds of the window of the desktop
	set desktopBounds to the result
	
	make new Finder window
	set the bounds of the front window to Â
		{0, 0, ((3rd item of the desktopBounds) / 2), ((4th item of the desktopBounds) / 2)}
	
	make new Finder window
	set the bounds of the front window to Â
		{0, ((4th item of the desktopBounds) / 2), ((3rd item of the desktopBounds) / 2), ((4th item of the desktopBounds))}
	
	
	make new Finder window
	set the bounds of the front window to Â
		{((3rd item of the desktopBounds) / 2), 0, ((3rd item of the desktopBounds)), (4th item of the desktopBounds)}
	
end tell