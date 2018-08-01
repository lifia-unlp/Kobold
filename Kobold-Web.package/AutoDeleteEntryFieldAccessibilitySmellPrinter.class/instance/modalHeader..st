rendering
modalHeader: html
		super modalHeader: html.
		html paragraph:[
		html text: 'Number of tooltip attempts '.
		html strong: self badSmell eventsCount printString, '.'.
	]