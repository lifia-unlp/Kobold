*Kobold-RefactoringsServer
fromRESTParameters: aDictionary
	| attributes xpath newLength |
	attributes := self extractRESTParametersFrom: aDictionary.
	xpath := attributes at: 1.
	newLength := attributes at: 2.
	^ (self on: (DomElement xpath: xpath))
		newLength: newLength;
		yourself