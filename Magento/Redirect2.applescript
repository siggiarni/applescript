tell application "Safari"
	activate
	
	set the clipboard to "keithharing-email"
	
	-- Click the redirect type dropdown
	tell current tab of first window
		do JavaScript "document.querySelectorAll('label[for=redirect_type]')[0].click();"
	end tell
	
	-- Select the custom redirect type	
	tell application "System Events"
		keystroke "c"
		delay 2
	end tell
	
	-- Select the request path input field
	tell current tab of first window
		do JavaScript "document.querySelectorAll('label[for=identifier]')[0].click();"
	end tell
	
	tell application "System Events"
		-- Fill in request path
		keystroke "v" using command down
		delay 0.5
		keystroke tab
		
		set the clipboard to "keithharing"
		
		-- Fill in target path
		keystroke "v" using command down
		delay 0.5
		keystroke tab
		
		-- Select redirect type
		keystroke "p"
		delay 0.5
		keystroke tab
		
		-- Fill in description
		keystroke "siggi"
		delay 0.5
		
	end tell
end tell
