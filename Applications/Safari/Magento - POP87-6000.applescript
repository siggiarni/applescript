--on run {input, parameters}

tell application "Safari"
	activate
	--delay 1
	set the clipboard to "POP87-6000"
	
	--Add new item
	--tell current tab of first window
	--do JavaScript "document.querySelectorAll('.scalable.add')[1].click();"
	--delay 2
	--end tell
	
	-- Click the Type dropdown
	tell current tab of first window
		do JavaScript "document.querySelectorAll('.scalable.add')[1].click();"
		delay 1
		do JavaScript "document.querySelectorAll('label[for=edititem_type_x20]')[0].click();"
		--do JavaScript "document.querySelector('#edititem_type_x20').click();"
		delay 1
	end tell
	
	tell application "System Events"
		-- Select Product from list
		key code 125
		key code 125
		key code 125
		key code 125
		key code 125
		key code 76
		delay 1
		
		--Paste in title		
		keystroke tab
		keystroke "v" using command down
		delay 1
		
		-- Move to next field
		keystroke tab
		keystroke tab
		
		--Paste in SKU
		keystroke "v" using command down
		delay 1
		
		--Set column size
		keystroke tab
		keystroke "o"
		keystroke "o"
		delay 1
		
		--Enable item
		keystroke tab
		keystroke "e"
	end tell
	
end tell
