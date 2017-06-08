testing
exceededText

	^self domElement hasBoundingBox
		and: [self textLength > self domElement boundingBox width]