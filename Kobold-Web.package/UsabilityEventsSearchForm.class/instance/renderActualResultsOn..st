rendering
renderActualResultsOn: html
	self eventsFound isEmpty
		ifTrue: [ 
				html
					text: 'No events found for ';
					strong: self searchTerm;
					text: '.' ];
		ifFalse: [ 
				html
					paragraph:
						'Showing Latest ' , (50 min: self eventsFound size) printString , ' of ' , self eventsFound size printString
							, ' Usability Events'.
				html render: (UsabilityEventsSearchResults for: self eventsFound) ]