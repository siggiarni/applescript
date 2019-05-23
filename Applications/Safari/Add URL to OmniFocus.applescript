use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Safari"
	
	set activeTab to get current tab of front window
	set activeURL to get URL of activeTab
	set activeName to get name of activeTab
	
end tell

tell application "OmniFocus"
	
	make new inbox task with properties {name:activeName, note:activeURL}
	
end tell