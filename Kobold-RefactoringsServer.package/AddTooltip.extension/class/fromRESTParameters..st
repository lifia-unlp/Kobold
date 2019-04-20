*Kobold-RefactoringsServer
fromRESTParameters: aDictionary
	| attributes xpath text |
	attributes := self extractRESTParametersFrom: aDictionary.
	xpath := attributes at: 1.
	text := attributes at: 2.
	^ self on: (DomElement xpath: xpath) text: text