use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Google Chrome"
	activate
	execute front window's active tab javascript "document.querySelector('#reset_to_default').click()"
	delay 0.5
	execute front window's active tab javascript "document.querySelectorAll('.action-accept')[0].click();"
	delay 3
	execute front window's active tab javascript "document.querySelector('#save_and_continue').click()"
end tell