printing
modalHeader: html
	
	super modalHeader: html.
	html paragraph:[
		html strong: self badSmell failsPercentage printString, '% '.
		html text:'of the times this form started to be filled, it was left before finishing, over a total of '.
		html strong:  self badSmell eventsCount printString.
		html text: ' times this form was accessed, with an average permanence time of  '.
		html strong: self badSmell averageTime printString, ' seconds.'.
	]