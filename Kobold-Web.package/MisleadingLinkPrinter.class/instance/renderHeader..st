rendering
renderHeader: html

	super renderHeader: html.
	html paragraph:[
		html text: 'Average dwelling time on short visits to link destination is '.
		html strong: self badSmell averageBrowsingTime printString, 'ms'.
	]