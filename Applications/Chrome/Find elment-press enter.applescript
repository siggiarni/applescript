
tell application "Google Chrome"
	activate
	delay 0.5
	execute front window's active tab javascript �
		"document.querySelector('[data-index=content]').focus(false);"
	
	-- simulate pressing the Enter key
	tell application "System Events" to key code 36
	
end tell