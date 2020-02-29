use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Safari" to activate
tell application "System Events"
	tell process "Safari"
		click at {300, 100} -- {from left, from top}
	end tell
end tell
