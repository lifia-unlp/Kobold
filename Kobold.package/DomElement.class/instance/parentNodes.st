accessing
parentNodes
	| nodes |
	nodes := XMLHTMLParser parse: self parentsList.
	^ nodes nodes isEmpty
		ifTrue: [ OrderedCollection new ]
		ifFalse: [ nodes nodes first nodes first nodes ]
	"TODO... find a better way of stripping html and body"