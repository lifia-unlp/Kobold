rest api
refactoringsScript: aToken
	<get>
	<path: '/token={aToken}'>
	| client application |
	application := ApplicationManager instance.
	[ client := application clientAtToken: aToken asSymbol ]
		on: Error
		do: [ :ex | self respondInvalidTokenError ].
	self respond: client refactoringsScript