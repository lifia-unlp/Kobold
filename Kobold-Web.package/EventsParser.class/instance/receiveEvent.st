rest api
receiveEvent
	<post>
	<path: '/'>
	| eventClass newEvent parameters client |
	parameters := self requestContext request fields.
	eventClass := (parameters at: 'threat') asSymbol asClass.
	[ client := BadSmellsFinder instance clientAtToken: (parameters at: 'token') asSymbol ]
		on: InvalidToken
		do: [ :ex |  ].
	newEvent := eventClass fromGetParameters: parameters.
	client
		addEvent: newEvent;
		save.
	self respondOk