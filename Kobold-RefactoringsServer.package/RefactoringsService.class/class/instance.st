singleton
instance
	^ Instance ifNil: [ Instance := self new ]