use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Safari"
	activate
	do JavaScript "document.getElementsByClassName('vspib')[0].click();" in document 1
end tell