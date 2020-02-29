activate application "FirefoxNightly"
delay 1
tell application "System Events"
	tell process "Firefox"
		click menu item "Zoom In" of menu 1 of menu item "Zoom" of menu 1 of menu bar item "View" of menu bar 1
		
	end tell
end tell