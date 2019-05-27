tell application "Google Chrome"
	activate
	execute front window's active tab javascript "document.querySelector('#save_and_continue').click()"
end tell