*Kobold-RefactoringsServer
fromRESTParameters: aDictionary
	| attributes xpath newName |
	attributes := self extractRESTParametersFrom: aDictionary.
	xpath := attributes at: 1.
	newName := attributes at: 2.
	^ self on: (DomElement xpath: xpath) newName: newName