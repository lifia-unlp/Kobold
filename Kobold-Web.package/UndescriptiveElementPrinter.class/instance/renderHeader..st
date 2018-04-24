rendering
renderHeader: html

	super renderHeader: html.
	html paragraph:[
		html text: 'Number of tooltip attempts '.
		html strong: self badSmell eventsCount printString, '.'.
	]