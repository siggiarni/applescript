use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions


tell application "Google Chrome"
	activate
	
	delay 0.5
	
	-- Open Campaigns
	execute front window's active tab javascript Â
		"document.querySelector('#L0NhbXBhaWducw--').querySelectorAll('.jstree-icon')[0].click();"
	
	delay 0.5
	
	-- Open 2019
	execute front window's active tab javascript Â
		"document.querySelector('#L0NhbXBhaWducy8yMDE5').querySelectorAll('.jstree-icon')[0].click();"
	
	delay 0.5
	
	-- Open SS
	execute front window's active tab javascript Â
		"document.querySelector('#L0NhbXBhaWducy8yMDE5L1NT').querySelectorAll('.jstree-icon')[0].click();"
	
	delay 0.5
	
	-- Open Campaign
	execute front window's active tab javascript Â
		"document.querySelector('#L0NhbXBhaWducy8yMDE5L1NTL2hhdmFpYW5hcw--').querySelectorAll('a')[0].click();"
	
end tell