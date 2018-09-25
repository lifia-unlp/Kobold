rendering
modalHeader: html
	super modalHeader: html.
	html
		paragraph: [ 
			html text: 'On elements Navegado'.
			(badSmell domElements) do: [:element| html code: '<li:>'. html code: element printString]
			"html code: self badSmell domElements printString"
			"html code: self badSmell domElement printString" ]