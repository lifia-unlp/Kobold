rendering
modalHeader: html
		super modalHeader: html.
		html paragraph:[
		html text: 'Number of Using The Key Tab '.
		html strong: self badSmell eventsCount printString, '.'.
	]