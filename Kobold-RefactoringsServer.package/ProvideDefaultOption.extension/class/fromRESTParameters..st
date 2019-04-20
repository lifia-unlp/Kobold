*Kobold-RefactoringsServer
fromRESTParameters: aDictionary
	| attributes xpath defaultOptionIndex |
	attributes := self extractRESTParametersFrom: aDictionary.
	xpath := attributes at: 1.
	defaultOptionIndex := attributes at: 2.
	^ self on: (DomElement xpath: xpath) defaultOptionIndex: defaultOptionIndex