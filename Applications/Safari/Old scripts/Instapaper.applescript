use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "System Events"
	tell process "Safari"
		set frontmost to true
		click (menu item "Instapaper") of (menu "Bookmarks") of menu bar 1
	end tell
	
	delay 3
	keystroke tab
	keystroke tab
	keystroke tab
	key code 36
	
end tell
