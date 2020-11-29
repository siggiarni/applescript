use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Safari"
	activate
	set activeTab to get current tab of front window
	set activeURL to get URL of activeTab
	set activeName to get name of activeTab
end tell

tell application "System Events"
	tell application process "Safari"
		set theSelection to value of attribute "AXFocusedUIElement"
		tell theSelection to perform action "AXShowMenu"
	end tell
end tell

