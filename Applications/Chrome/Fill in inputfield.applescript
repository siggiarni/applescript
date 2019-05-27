
tell application "Google Chrome"
	activate
	delay 0.5
	execute front window's active tab javascript "document.getElementById('foobar').select();"
end tell

tell application "System Events"
	keystroke "This is where you type the text you want inserted"
end tell