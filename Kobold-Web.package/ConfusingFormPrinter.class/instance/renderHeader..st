printing
renderHeader: html
	
	super renderHeader: html.
	html paragraph:[
		html text: 'Failed '.
		html strong: self badSmell failsPercentage printString, '% '.
		html text:'of the submissions, over a total of ', self badSmell eventsCount printString, ' with '.
		html strong: self badSmell validationType asString.
		html text: ' validation'.
	]