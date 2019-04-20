*Kobold-RefactoringsServer
fromRESTParameters: aDictionary
	| attributes xpath |
	attributes := self extractRESTParametersFrom: aDictionary.
	xpath := attributes at: 1.
	^ self on: (DomElement xpath: xpath)