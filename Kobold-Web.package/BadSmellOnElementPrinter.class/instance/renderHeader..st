rendering
renderHeader: html
	super renderHeader: html.
	html
		paragraph: [ 
			html text: 'On element '.
			html code: self badSmell domElement printString ]