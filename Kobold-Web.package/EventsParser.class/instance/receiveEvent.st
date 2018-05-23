rest api
receiveEvent
	<post>
	<path: '/'>
	| eventClass newEvent parameters client application |
	FLSerializer serialize: self requestContext request toFileNamed: 'debug-request-', DateAndTime now asString,'.fuel'. 
	parameters := self requestContext request fields.
	application := ApplicationManager instance.
	eventClass := self class environment at: (parameters at: 'threat') asSymbol.
	client := [ application clientAtToken: (parameters at: 'token') asSymbol ]
		on: InvalidToken
		do: [ :ex | self respondInvalidTokenError ].
	newEvent := eventClass fromGetParameters: parameters.
	client
		addEvent: newEvent;
		save.
	self respondOk