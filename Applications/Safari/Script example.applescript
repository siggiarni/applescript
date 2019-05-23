tell application "Safari"
	
	--if you have multiple windows, controlling/choosing them works much the same way as tabs
	set currentTab to current tab of front window
	set currentName to currentTab's name
	log currentName
	set currentURL to currentTab's URL
	log currentURL
	(*set currentText to currentTab's text
  log currentText*)
	(*set currentSource to currentTab's source
  log currentSource*)
	--these are commented out because they return, of course, very long strings
	set currentVisi to currentTab's visible
	log currentVisi
	
	--replcaces current URL. other properties are read-only.
	set URL of currentTab to "http://www.google.com"
	
	set twoName to (tab 2 of front window)'s name
	log twoName
	set lastName to (last tab of front window)'s name
	log lastName
	
	set currentTabNum to index of current tab of front window
	log currentTabNum --the selected tab can't be the first or last
	set nextTab to (tab (currentTabNum + 1) of front window)
	set nextName to nextTab's name
	log nextName
	set prevTab to (tab (currentTabNum - 1) of front window)
	set prevName to prevTab's name
	log prevName
	
	set tabsList to front window's tabs as list --gets all open tabs
	set tabsInfo to {} as list
	repeat with currTab in tabsList
		set currName to currTab's name
		set currURL to currTab's URL
		set currNum to currTab's index
		set tabsInfo to tabsInfo() as list
	end repeat
	log tabsInfo
	log _name of item 2 of tabsInfo
	--this creates a list of records about the tabs you have open.
	
	close current tab of front window
	if exists tab 3 of front window then beep
	make new tab at (end of front window)
	make new tab at (tab 4 of front window) --this has to be a tab number that doesn't already exist
	
	open (((path to desktop as string) & "file.txt") as string) --obviously, this has to be a real file. can be alias or string
	
	email contents of (current tab of front window) --only works with some mail clients
	show bookmarks
	set URL of (make new tab at end of front window) to "topsites://" --you can nest things like using parentheses.
	
end tell