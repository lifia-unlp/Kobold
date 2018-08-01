running
setUp
	| mockParameters mockEvents |
	times := {7687 . 21323 . 32412 . 12930 . 11300 . 20332} asOrderedCollection.
	mockParameters := Dictionary new.
	mockParameters
		at: 'sourceURL' put: 'http://www.testsite.net/register';
		at: 'targetURL' put: 'http://www.testsite.net/welcome';
		at: 'form[xpath]' put: '/body/div/div[2]/form[0]';
		at: 'time' put: '0';
		at: 'timestamp' put: '1504480552475'.
	mockEvents := OrderedCollection new.
	times
		do: [ :time | mockEvents add: ((LongRequest fromGetParameters: mockParameters) copy time: time) ].
	smell := NoProcessingPage events: mockEvents