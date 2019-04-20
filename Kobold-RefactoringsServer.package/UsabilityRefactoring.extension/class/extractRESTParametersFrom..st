*Kobold-RefactoringsServer
extractRESTParametersFrom: aDictionary
	| parameters |
	parameters := aDictionary at: #attributes.
	^ (parameters
		collect: [ :parameter | (parameter at: #id) asNumber -> (parameter at: #value) ])
		asDictionary