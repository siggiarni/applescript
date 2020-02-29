tell application "Safari"
	activate
	set theScript to Â
		"document.getElementById('editis_active').value = 0;
		document.querySelector('[title=\"Save\"]').click(); "
	do JavaScript theScript in current tab of first window
end tell