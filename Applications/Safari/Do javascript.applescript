tell application "Safari"
	activate
	do JavaScript "document.getElementsByClassName('vspib')[0].click();" in document 1
end tell