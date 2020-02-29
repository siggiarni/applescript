use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell front document of application "OmniFocus"

	-- Create a new project and save to variable `theProject`
	set theProject to make new project with properties {name:"Project Name", singleton action holder:true}

	-- Create a new task directly inside `theProject`
	tell theProject
		set theOtherTask1 to make new task with properties {name:"Other Task Name1"}
		set theOtherTask2 to make new task with properties {name:"Other Task Name2"}
	end tell

end tell
