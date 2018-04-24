rendering
renderDetails: html
	self element hasBoundingBox
		ifTrue: [ self elementIframe: html ]
		ifFalse: [ self noIframeMessage: html ]