use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Safari"
	set windowCount to number of windows
	set docText to ""
	repeat with x from 1 to windowCount
		set tabcount to number of tabs in window x
		repeat with y from 1 to tabcount
			set tabName to name of tab y of window x
			set docText to docText & tabName & linefeed as string
		end repeat
	end repeat
end tell
tell application "TextEdit"
	activate
	make new document
	set the text of the front document to docText
end tell