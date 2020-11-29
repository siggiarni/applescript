use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Safari"
	activate
	tell application "System Events" to keystroke "l" using {command down, option down} # cmd-opt-l
	delay 1
	tell application "System Events" to key code 49 #space
end tell