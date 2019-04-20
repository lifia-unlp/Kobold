*Kobold-RefactoringsServer
extractRESTParametersFrom: aDictionary
	| simpleParameters listedParameters |
	simpleParameters := (aDictionary at: #attributes) reject: #isArray.
	listedParameters := (aDictionary at: #attributes) select: #isArray.
	^ ((self extractRESTSimpleParametersFrom: simpleParameters)
		, (self extractRESTListedParametersFrom: listedParameters)) asDictionary