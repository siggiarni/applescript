use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "System Events"
	tell process "Spotify"
		click (menu item "Next") of (menu "Playback") of menu bar 1
	end tell
end tell