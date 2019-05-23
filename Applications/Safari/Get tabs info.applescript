use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Safari"
	set tabsList to front window's tabs as list --gets all open tabs
	set tabsInfo to {}
	repeat with currTab in tabsList
		set currName to currTab's name
		set currURL to currTab's URL
		set currNum to currTab's index
		copy {tabName:currName, tabURL:currURL, tabNumber:currNum} to end of tabsInfo
	end repeat
	return tabsInfo
end tell