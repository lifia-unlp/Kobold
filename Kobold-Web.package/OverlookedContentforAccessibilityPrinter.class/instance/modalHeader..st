rendering
modalHeader: html
		super modalHeader: html.
		html paragraph:[
		html text: 'Number of FastScrollingWithKeyboard '.
		html strong: self badSmell eventsCount printString, '.'.
	]