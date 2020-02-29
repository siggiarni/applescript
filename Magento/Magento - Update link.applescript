use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

--on run {input, parameters}

tell application "Google Chrome" to activate

tell application "System Events"
	
	-- Add link to clipboard	
	set the clipboard to "https://twitter.com/HappySofficial"
	delay 0.5
	
	-- Paste in Link
	key down {command}
	keystroke "v"
	key up {command}
	delay 0.5
	
	-- Move to next field
	keystroke tab
	keystroke tab
	keystroke tab
	keystroke tab
	delay 0.5
	
	-- Add link to clipboard
	set the clipboard to "https://www.instagram.com/happysocks"
	delay 0.5
	
	-- Paste in Link
	key down {command}
	keystroke "v"
	key up {command}
	delay 0.5
	
end tell

--return input
--end run