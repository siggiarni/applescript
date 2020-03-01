use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Google Chrome"
	activate
	delay 0.5
	execute front window's active tab javascript "document.getElementById('myInput').select();"
end tell

tell application "System Events"
	keystroke "This is where you type the text you want inserted"
end tell
