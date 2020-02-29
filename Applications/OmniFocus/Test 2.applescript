use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell front document of application "OmniFocus"

	-- Create a new project and save to variable `theProject`
	set theProject to make new project with properties {name:"Project Name", singleton action holder:true}

	-- Create a new task and save to variable `theTask`
	set theTask to make new inbox task with properties {name:"Task Name", note:"Task Note"}

	-- Move `theTask` inside of `theProject`
	move theTask to end of tasks of theProject

	-- Create a new task directly inside `theProject`
	tell theProject
		set theOtherTask to make new task with properties {name:"Other Task Name", note:"Other Task Note"}
	end tell

	-- Create a new tag
	set newTag to make new tag with properties {name:"New Tag"}

	-- Add `newTag` to `theOthertask`
	add newTag to tags of theOtherTask

	-- Create a new task with `newTag` in Inbox
	set theThirdTask to make new inbox task with properties {name:"A Third Task", primary tag:newTag}

end tell
