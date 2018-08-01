rest api
refactoringsScript
	<post>
	<path: '/'>
	| client application parameters |
	parameters := self requestContext request fields.
	application := ApplicationManager instance.
	client := [ application clientAtToken: (parameters at: 'token') asSymbol ]
		on: Error
		do: [ :ex | self respondInvalidTokenError ].
	self respond: client refactoringsScript