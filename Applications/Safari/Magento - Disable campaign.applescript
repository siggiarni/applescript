use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Safari"
	activate
	set theScript to Â
		"document.getElementById('editis_active').value = 0;
		document.querySelector('[title=\"Save\"]').click();"
	do JavaScript theScript in current tab of first window
end tell