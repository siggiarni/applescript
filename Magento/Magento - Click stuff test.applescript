use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Google Chrome"
	activate
	
	delay 1
	
	-- Select the Page title
	execute front window's active tab javascript Â
		"document.querySelectorAll('.admin__field._required .admin__field-label')[0].click()"
	
	delay 1
	
	-- Tab to the content section
	tell application "System Events" to keystroke tab
	
	delay 1
	
	-- Open the content section
	tell application "System Events" to key code 36
	
	-- Focus on last widget
	execute front window's active tab javascript Â
		"document.querySelectorAll('.pd-col-content-preview')[4].focus(false)"
	
	delay 1
	
	-- Click widget
	execute front window's active tab javascript Â
		"document.querySelectorAll('.pd-col-content-preview')[4].click()"
	
	-- Wait for panel to open
	delay 5
	
	-- Focus on Insert button
	execute front window's active tab javascript Â
		"document.querySelectorAll('.action-primary.add-widget')[0].focus(false)"
	
	delay 1
	
	execute front window's active tab javascript Â
		"document.querySelectorAll('.action-primary.add-widget')[0].click()"
	
	-- Wait for the panel to close
	delay 5
	
	-- Save doc
	execute front window's active tab javascript Â
		"document.querySelector('#save_and_continue').click()"
	
end tell