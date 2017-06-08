instance creation
resetInstance
	self selectAll
		ifEmpty: [ BadSmellsFinder resetInstance.
			instance := self new initialize ]
		ifNotEmpty: [ :persistedManagers | instance := persistedManagers first ]