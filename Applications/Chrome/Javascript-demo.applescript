use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

-- View > Developer > Allow JavaScript from Apple Events
tell application "Google Chrome"
	activate
	execute front window's active tab javascript "console.log('Apple script')"
end tell
