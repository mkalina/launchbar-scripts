--found @ https://gist.github.com/249607
set theIP to do shell script "curl -sf http://checkip.dyndns.org/|cut -d ':' -f 2|cut -d '<' -f1|sed -e 's/ //g'"
set the clipboard to theIP

tell application "LaunchBar"
	display notification "Your IP: " & theIP with title "Check IP" subtitle "IP checked and copied to clipboard"
end tell

return theIP
