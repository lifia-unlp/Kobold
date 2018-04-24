rendering
renderHeader: html

	super renderHeader: html.
	html paragraph: [
		html text: 'Submitted on a single item '.
		html strong: self badSmell singlesPercentage printString, '% '.
		html text:' of the times, over a total of '.
		html strong: self badSmell eventsCount printString.
		html text: ' submissions'.
	]