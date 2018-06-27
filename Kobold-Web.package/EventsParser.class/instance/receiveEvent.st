rest api
receiveEvent
	<post>
	<path: '/'>
	| eventClass newEvent parameters client application version |
	FLSerializer serialize: self requestContext request toFileNamed: '/var/tmp/kobold/debug-request-', DateAndTime now asString,'.fuel'. 
	parameters := self requestContext request fields.
	application := ApplicationManager instance.
	eventClass := self class environment at: (parameters at: 'threat') asSymbol.
	client := [ application clientAtToken: (parameters at: 'token') asSymbol ]
		on: InvalidToken
		do: [ :ex | self respondInvalidTokenError ].
	newEvent := eventClass fromGetParameters: parameters.
	version := client versionTagged: (parameters at: 'version') asSymbol.
	version ifNil: [ client defaultVersion addEvent: newEvent ] ifNotNil: [ version addEvent: newEvent].
	client save.
	self respondOk