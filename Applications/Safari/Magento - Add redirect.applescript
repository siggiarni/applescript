use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Safari"
	activate
	
	-- >>>>>>>>>>>>>>> 1/2 UPDATE REQUEST PATH <<<<<<<<<<<<<<
	-- Set the Request Path	
	set the clipboard to "IN"
	
	-- Select the Request Path
	tell current tab of first window
		do JavaScript "document.querySelectorAll('label[for=request_path]')[0].click();"
	end tell
	
	-- Paste in the request path
	tell application "System Events"
		keystroke "v" using command down
		delay 0.5
	end tell
	
	-- Select the Target Path
	tell current tab of first window
		do JavaScript "document.querySelectorAll('label[for=target_path]')[0].click();"
	end tell
	
	-- >>>>>>>>>>>>>>> 2/2 UPDATE TARGET PATH <<<<<<<<<<<<<<
	-- Set the Target Path
	set the clipboard to "OUT"
	
	tell application "System Events"
		
		-- Paste in the target path
		keystroke "v" using command down
		delay 0.5
		keystroke tab
		
		-- Set the Redirect type to Permanent 301
		keystroke "p"
		delay 0.5
		keystroke tab
		
		-- Put your name in the description
		keystroke "siggi"
		delay 0.5
		
	end tell
	
	-- Save the redirect
	tell current tab of first window
		do JavaScript "document.querySelector('#save').click();"
	end tell
	
end tell
