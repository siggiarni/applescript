use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

--on run {input, parameters}

tell application "Safari"
	activate
	delay 1
	set the clipboard to "POP87-6000"
	
	--Add new item
	tell current tab of first window
		do JavaScript "document.querySelectorAll('.scalable.add')[1].click();"
		delay 1
	end tell
	
	-- Click the Type dropdown
	tell current tab of first window
		do JavaScript "document.querySelectorAll('label[for=edititem_type_x20]')[0].click();"
		delay 1
	end tell
	
	-- Select Product from list
	tell application "System Events"
		keystroke "p"
		delay 1
	end tell
	
	-- Click the Title dropdown
	tell current tab of first window
		do JavaScript "document.querySelectorAll('label[for=edittitle_x20]')[0].click();"
		delay 1
	end tell
	
	--Paste in title
	tell application "System Events"
		keystroke "v" using command down
		delay 0.5
	end tell
	
	-- Click the SKU input
	tell current tab of first window
		do JavaScript "document.querySelectorAll('label[for=editsku_x20]')[0].click();"
		delay 1
	end tell
	
	-- Paste in SKU
	tell application "System Events"
		keystroke "v" using command down
		delay 1
	end tell
	
	
end tell
