use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Google Chrome"
	activate
end tell

tell application "System Events"
	
	keystroke "SBDO01-6700"
	delay 0.5
	
	keystroke tab
	delay 0.5
	keystroke tab
	delay 0.5
	
	keystroke "BDO01-2200"
	delay 0.5
	
	keystroke tab
	delay 0.5
	keystroke tab
	delay 0.5
	
	keystroke "BDO01-6500-464"
	delay 0.5
	
	keystroke tab
	delay 0.5
	keystroke tab
	delay 0.5
	
	keystroke "EAS01-2700"
	delay 0.5
	
end tell


-- Remember to enable AppleScript in Google Chrome:
-- View → Developer → Allow JavaScript from Apple Events