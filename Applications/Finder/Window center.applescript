use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Finder"
	
	get the bounds of the window of the desktop
	set desktopBounds to the result
	set desktopBoundsWidth to the ((3rd item of the desktopBounds) / 2)
	set desktopBoundsHeight to the ((4th item of the desktopBounds) / 2)
	
	log desktopBounds
	log desktopBoundsWidth
	log desktopBoundsHeight
	
	get the bounds of the front window
	set windowBounds to the result
	set windowBoundsX to the (desktopBoundsWidth - ((3rd item of the windowBounds) / 2))
	set windowBoundsY to the (desktopBoundsHeight - ((4th item of the windowBounds) / 2))
	set windowBoundsWidth to the ((3rd item of the windowBounds) + (windowBoundsX))
	set windowBoundsHeight to the ((4th item of the windowBounds) + (windowBoundsY))
	
	log windowBounds
	
	--x hnit: helmingur af breidd glugga
	--y hnit: helmingur af haed glugga
	--width: breidd glugga + helmingur af breidd glugga.
	--height: haed glugga + helmingur af haed glugga.	
	-- x, y, width, height
	set the bounds of the front window to Â
		{windowBoundsX, windowBoundsY, windowBoundsWidth, windowBoundsHeight}
	
	
end tell