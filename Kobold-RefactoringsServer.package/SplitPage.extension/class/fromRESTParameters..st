*Kobold-RefactoringsServer
fromRESTParameters: aDictionary
	| attributes xpath frequentValues |
	attributes := self extractRESTParametersFrom: aDictionary.
	xpath := attributes at: 1.
	frequentValues := attributes at: 2.
	^ (self on: (DomElement xpath: xpath))
		values: frequentValues;
		yourself