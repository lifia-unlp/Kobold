rendering
modalHeader: html

	super url: html.
	html paragraph: [
		html text: 'Element '.
		html code: self badSmell domElement printString.
		html text: ' was clicked '.
		html strong: self badSmell timesClicked printString, ' times'.
	]