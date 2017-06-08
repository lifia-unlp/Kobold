rendering
modalHeader: html
	super modalHeader: html.
	html
		paragraph: [ 
			html text: 'On element '.
			html code: self badSmell domElement printString ]