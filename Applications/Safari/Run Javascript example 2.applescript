set jsCode to "document.getSelection(); "
tell application "Safari"
	set selectedText to (do JavaScript jsCode in current tab of window 1)
	return selectedText
end tell