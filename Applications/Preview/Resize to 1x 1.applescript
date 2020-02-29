tell application "System Events"
	tell process "Preview"
		set frontmost to true
		-- Click Tools > Adjust Size..
		click menu item 5 of menu 7 of menu bar 1
		-- Set the width to 50%
		set value of text field 1 of group 1 of sheet 1 of window 1 to "50"
		-- Set the height to 50%
		set value of text field 2 of group 1 of sheet 1 of window 1 to "50"
		-- Set the DPI to 72
		set value of text field 3 of group 1 of sheet 1 of window 1 to "72"
		-- Hit Enter key
		--key code 36
		-- Click OK
		click of button 1 of sheet 1 of window 1
		-- Save image
		keystroke "s" using command down
	end tell
end tell