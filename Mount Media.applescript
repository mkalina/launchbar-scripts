growlRegister()
growlNotify("Diskutil", "Mounting external drive...")
set diskname to do shell script "disktool -l | /usr/bin/grep -e 'Media' | /usr/bin/grep -o '\\(disk[0-9s]*\\)'"
set result to do shell script "diskutil mount " & diskname

growlNotify("Diskutil", result)

open location "x-launchbar:browse?path=/Volumes"

-- additional scripting for Growlnotification 
using terms from application "Growl"
	on growlRegister()
		tell application "Growl"
			register as application "Diskutil" all notifications {"Alert"} default notifications {"Alert"} icon of application "Disk Utility.app"
		end tell
	end growlRegister
	on growlNotify(grrTitle, grrDescription)
		tell application "Growl"
			notify with name "Alert" title grrTitle description grrDescription application name "Diskutil"
		end tell
	end growlNotify
end using terms from