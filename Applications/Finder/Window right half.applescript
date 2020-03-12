use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Finder"
	get the bounds of the window of the desktop
	set the bounds of the front window to Â
		{((3rd item of the result) / 2), 0, ((3rd item of the result)), (4th item of the result)}
	set the current view of the front window to list view
end tell
