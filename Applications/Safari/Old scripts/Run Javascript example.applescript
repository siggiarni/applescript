use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

set jsCode to "console.log('Apple Script'); " -- None the whitespace at the end. That is required.
tell application "Safari"
	do JavaScript jsCode in current tab of window 1
end tell