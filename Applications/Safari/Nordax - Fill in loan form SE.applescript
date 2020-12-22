use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

--on run {input, parameters}

tell application "Safari"
	activate
	--delay 1
	set the clipboard to "asdf"
	
	-- Click the Name input field
	tell current tab of first window
		do JavaScript Â
			"document.querySelector('input[name=PersonalFullNameMA]').value='Fred Svensson';"
		do JavaScript Â
			"document.querySelector('input[name=PersonalNumberMA]').value='9001010033';"
		do JavaScript Â
			"document.querySelector('select[name=CivilMaritalStatusMA]').value='Married';"
		delay 1
	end tell
	
end tell
