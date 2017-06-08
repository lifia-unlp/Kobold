rendering
modalHeader: html

	super modalHeader: html.
	html paragraph:[
		html text: 'Text length is '.
		html code: self badSmell averageInputsLength printString.
		html text:' character long in average'.
	]