*Kobold-RefactoringsServer
fromRESTParameters: aDictionary
	| parameters xpath url |
	parameters := aDictionary at: #attributes.
	parameters
		detect: [ :parameter | (parameter at: #id) asNumber = 1 ]
		ifFound: [ :urlParameter | xpath := urlParameter at: #value ].
	parameters
		detect: [ :parameter | (parameter at: #id) asNumber = 2 ]
		ifFound: [ :urlParameter | url := urlParameter at: #value ].
	^ self on: (DomElement xpath: xpath) urlString: url