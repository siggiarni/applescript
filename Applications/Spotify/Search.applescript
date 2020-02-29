tell application "Spotify" to activate
delay 0.1
tell application "System Events" to tell process "Spotify"
	keystroke "l" using command down
end tell