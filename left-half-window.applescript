use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "System Events"
	set frontApp to name of first application process whose frontmost is true
end tell

tell application "Finder"
	--get the bounds of the window of desktop
	get the bounds of the window of desktop
end tell

try
	tell application frontApp
		set the bounds of the front window to Â
			{0, 0, ((3rd item of the result) / 2), (4th item of the result)}
	end tell

on error the error_message number the error_number
	display dialog "Error: " & the error_number & ". " & the error_message buttons {"OK"} default button 1
end try
