rest api
refactoringsScript: aToken
	<get>
	<path: '/token={aToken}'>
	| parameters client |
	parameters := self requestContext request fields.
	[ client := BadSmellsFinder instance clientAtToken: aToken asSymbol ]
		on: Error
		do: [ :ex | self respondInvalidTokenError ].
	self respond: client refactoringsScript