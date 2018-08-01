comparing
= otherElement
	^ self class = otherElement class
		and: [ self xpath = otherElement xpath & (self sameContentAs: otherElement) ]