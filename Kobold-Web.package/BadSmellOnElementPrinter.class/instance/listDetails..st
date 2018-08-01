printing
listDetails: html
	super listDetails: html.
	html small: [ html code: self badSmell domElement printString ]