on run {input, parameters}
	tell application "SystemUIServer"
		display dialog "Enter SKU" default answer ""
	end tell
	
	set answer to text returned of result
	set the clipboard to answer
	delay 0.5
	
	tell application "Google Chrome" to activate
	
	tell application "System Events"
		-- Select prodcut from dropdown
		keystroke tab
		keystroke tab
		keystroke "p"
		delay 0.5
		
		-- Paste product Name
		keystroke tab
		key down {command}
		keystroke "v"
		key up {command}
		delay 0.5
		
		-- Paste product SKU        
		keystroke tab
		keystroke tab
		key down {command}
		keystroke "v"
		key up {command}
		delay 0.5
		
		-- Select one column
		keystroke tab
		keystroke (key code 125)
		delay 0.5
		keystroke return
		delay 0.5
		
		-- Enable item
		keystroke tab
		delay 0.5
		keystroke "e"
		delay 0.5
	end tell
	
	return input
end run