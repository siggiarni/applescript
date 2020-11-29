open location "http://www.apple.com/"
delay 1
tell application "System Events" to tell process "Safari"
	set theImage to image 1 of UI element 3 of UI element 1 of scroll area 1 of group 1 of group 1 of group 2 of window "Apple"
	tell theImage to perform action "AXShowMenu"
end tell