use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Google Chrome"
	open location "https://www.wikipedia.org"
	repeat until (loading of front window's active tab is false)
		-- 1 + 1
		log "Loading..."
	end repeat
	log "Done loading!"
end tell
