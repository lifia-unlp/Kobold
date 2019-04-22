singleton
resetInstance
	Instance ifNotNil: [ :instance | instance stop ].
	Instance := nil.
	self instance