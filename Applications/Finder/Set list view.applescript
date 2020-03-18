use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Finder"
	activate
	get the name of the front window
	set the current view of the front window to list view
	tell list view options of window 1
		set icon size to small
		set text size to 14
		set sort direction of sort column to normal
		-- Kind column
		set sort column to the kind column
		set width of sort column to 100
		-- Size column
		set sort column to the size column
		set width of sort column to 100
		-- Date modified
		set sort column to the modification date column
		set width of sort column to 100
		-- Name column
		set sort column to the name column
	end tell
	-- Workaround
	tell front Finder window
		set oldTarget to target
		set target to path to home folder
		set target to oldTarget
		set the current view to list view
	end tell
end tell