tell application "Google Chrome"
	set window_list to windows
	repeat with w in window_list
		try
			set urls to "["
			set tab_list to tabs of w
			repeat with t in tab_list
				set urls to urls & "{" & "\"title\": \"" & title of t & "\", \"url\": \"" & URL of t & "\"}, "
			end repeat
		on error
			-- not all windows have tabs
		end try
	end repeat
	get urls
end tell
