use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Spotify" to activate
delay 0.1
tell application "System Events" to tell process "Spotify"
	keystroke "l" using command down
end tell
