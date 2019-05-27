-- View > Developer > Allow JavaScript from Apple Events
tell application "Google Chrome"
	activate
	execute front window's active tab javascript "console.log('Apple script')"
end tell