rendering
modalHeader: html

	super modalHeader: html.
	html paragraph:[
		html text: 'Text length is '.
		html code: self badSmell averageInputsLength printString, 'px'.
		html text:' long on average, but the text field is '.
		html code: self badSmell inputLength printString, 'px'.
		html text:' long.'.
	]