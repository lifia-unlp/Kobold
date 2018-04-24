rendering
renderHeader: html

	super renderHeader: html.
	html paragraph:[
		html text: 'Sample value: '.
		html emphasis: self badSmell sample.
	]