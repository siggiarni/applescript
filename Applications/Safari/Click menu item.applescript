use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "System Events"
	tell process "Safari"
		set frontmost to true
		--get description of first UI element of first group of last toolbar of first window
		--get name of first menu bar item of menu bar 1 of first window
		
		tell menu bar item "File" of menu bar 1
			click menu item "AirDrop" of menu 1 of menu item "Share" of menu 1
		end tell
		
		delay 2
		
	end tell
end tell

-- https://apple.stackexchange.com/questions/296440/assign-keyboard-shortcut-to-safari-extensions