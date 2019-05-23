tell application "System Events"
	tell process "Safari"
		set extVar to "Recent Tab List"
		
		tell first UI element of last group of last toolbar of first window
			click (first button where its description = extVar)
		end tell
	end tell
end tell

-- https://apple.stackexchange.com/questions/296440/assign-keyboard-shortcut-to-safari-extensions