use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "System Events"
	tell process "Safari"
		set frontmost to true
		click menu item 18 of menu 7 of menu bar 1
	end tell
end tell