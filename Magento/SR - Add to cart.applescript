tell application "Safari"
	activate
	open location "https://staging-release.happysocks.com/se/arrow-heart-tights.html"
	delay 2
	set addToCart to Â
		"
		document.querySelectorAll('.validate-select')[0].value = 198;
		document.querySelectorAll('.buy-btn')[0].click();
		"
	do JavaScript addToCart in current tab of first window
	delay 2
	set checkout to Â
		"
		document.querySelectorAll('.checkout')[0].click();
		"
	do JavaScript checkout in current tab of first window
end tell