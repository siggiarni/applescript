use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Safari"
	activate
	set activeTab to get current tab of front window
	set activeURL to get URL of activeTab
	set activeName to get name of activeTab
end tell

tell application "System Events"
	tell process "Safari"
		click (menu item "OmniFocus") of (menu "Share") of (menu item "Share") of (menu "File") of menu bar 1
		delay 2
		keystroke activeName
		delay 0.5
		click (button "Post") of window 1
	end tell
end tell