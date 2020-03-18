use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Finder"
	activate
	get the name of the front window
	set the current view of the front window to list view
	--set sort column of list view options of Finder window 1 to size column
	
	tell list view options of window 1
		--get sort column
		--get icon size
		--get sort direction of sort column
		--get width of sort column
		--get visible of sort column
		--get text size
		
		--set icon size to large
		--set sort column to the name column
		--set width of sort column to 300
		--set text size to 10
		
		--set sort direction of sort column to reversed
		
		--set sort direction to reversed
		--get the width of name column
	end tell
end tell