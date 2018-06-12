rendering
renderLatestEventsOn: html
	| eventsCount |
	eventsCount := self client defaultVersion eventsCount.
	html
		paragraph:
			'Showing Latest ' , (50 min: eventsCount) printString , ' of ' , eventsCount printString , ' Usability Events'.
	html render: self eventsList