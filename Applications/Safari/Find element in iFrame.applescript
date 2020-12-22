use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Safari"
	tell current tab of first window
		open location "https://cdpn.io/siggiarni/debug/eYdEGeb"
		delay 2
		do JavaScript Â
			"document.getElementById('demo').contentDocument.getElementsByName('foo')[0].value='Hello';"
	end tell
end tell
