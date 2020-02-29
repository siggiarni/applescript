use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Google Chrome"
	-- Open product page
	open location "https://m2-staging.happysocks.com/gl/lily-rib-ankle-sock.html"
	repeat until (loading of front window's active tab is false)
		1 + 1
	end repeat
end tell
