use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

on idle
	set IP_address to "8.8.8.8"
	try
		set ping to (do shell script "ping -c 2 " & IP_address)
	on error
		do shell script "networksetup -setairportpower en0 off"
		do shell script "networksetup -setairportpower en0 on"
	end try
	--beep
	return 900
end idle
