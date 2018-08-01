rendering
modalHeader: html

	super modalHeader: html.
	html paragraph:[
		html text: 'Sample value: '.
		html emphasis: self badSmell sample.
	]