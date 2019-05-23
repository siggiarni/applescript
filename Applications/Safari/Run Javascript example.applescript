set jsCode to "console.log('Apple Script'); " -- None the whitespace at the end. That is required.
tell application "Safari"
	do JavaScript jsCode in current tab of window 1
end tell