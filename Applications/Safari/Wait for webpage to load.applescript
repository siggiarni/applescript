use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Safari"
	
	activate
	
	open location "https://m2-staging.happysocks.com/gl/lily-rib-ankle-sock.html"
	
	tell document 1 to repeat
		do JavaScript "document.readyState"
		if the result = "complete" then exit repeat
		delay 0.5
	end repeat
	
	open location "https://m2-staging.happysocks.com/"
	
end tell