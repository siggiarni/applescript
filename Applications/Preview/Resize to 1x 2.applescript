use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "System Events"
	tell process "Preview"
		set frontmost to true
		-- Click Tools > Adjust Size..
		click menu item 5 of menu 7 of menu bar 1
		delay 1
		-- Tab to the Width field and set to 50%
		key code 48
		keystroke "50"
		-- Tab to Height field and set to 50%
		key code 48
		keystroke "50"
		-- Tab to the Resolution field and set to 72
		key code 48
		keystroke "72"
		-- Hit Return and close sheet
		key code 36
		-- Save image
		keystroke "s" using command down
	end tell
end tell
