use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Finder"
	
	get the bounds of the window of the desktop
	set desktopBounds to the result
	set desktopBoundsX to the (1st item of the desktopBounds)
	set desktopBoundsY to the (2nd item of the desktopBounds)
	set desktopBoundsWidth to the ((3rd item of the desktopBounds) / 2)
	set desktopBoundsHeight to the ((4th item of the desktopBounds) / 2)
	
	get the bounds of the front window
	set windowBounds to the result
	set windowBoundsX to the (desktopBoundsWidth - ((3rd item of the windowBounds) / 2))
	set windowBoundsY to the (desktopBoundsHeight - ((4th item of the windowBounds) / 2))
	set windowBoundsWidth to the ((3rd item of the windowBounds) + windowBoundsX)
	set windowBoundsHeight to the ((4th item of the windowBounds) + windowBoundsY)
	
	set the bounds of the front window to Â
		{windowBoundsX, windowBoundsY, windowBoundsWidth, windowBoundsHeight}
	
	
end tell