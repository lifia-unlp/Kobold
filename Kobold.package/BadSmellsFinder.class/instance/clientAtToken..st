accessing
clientAtToken: aToken
	|client|
	client:= clients detect: [ :each | each hasToken: aToken] ifNone:[ (InvalidToken token: aToken) signal ].
	^client