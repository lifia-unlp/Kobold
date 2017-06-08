rendering
renderResultsOn: html

	(self searchTerm isEmpty)
		ifTrue: [self renderLatestEventsOn: html];
		ifFalse: [self renderActualResultsOn: html]