rest api
refactoringsScript
	<post>
	<path: '/'>
	| client application parameters version |

	parameters := self requestContext request fields.
	application := ApplicationManager instance.
	client := [ application clientAtToken: (parameters at: 'token') asSymbol ]
		on: Error
		do: [ :ex | self respondInvalidTokenError ].
	
	version := client versionTagged: (parameters at: 'version').
	version ifNil: [ self respond: client defaultVersion refactoringsScript  ] ifNotNil: [ self respond: version refactoringsScript ].	