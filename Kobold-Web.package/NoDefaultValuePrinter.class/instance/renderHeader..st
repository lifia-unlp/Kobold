rendering
renderHeader: html

	super renderHeader: html.
	html paragraph:[
		html text: 'Option index '.
		html strong: self badSmell mostFrequentIndex printString, ' ("', self badSmell mostFrequentText,'")'.
		html text: ' was selected '.
		html strong: self badSmell mostSelectedOptionPercentage printString, '%'.
		html text: ' of the times.'.
		html text: ' (', self badSmell mostSelectedOptionCount printString, ' times out of ', self badSmell eventsCount printString,  ') '
	]