accessing
clientAtToken: aToken
	^ self clients
		detect: [ :client | client hasToken: aToken ]
		ifNone: [ (InvalidToken token: aToken) signal ]