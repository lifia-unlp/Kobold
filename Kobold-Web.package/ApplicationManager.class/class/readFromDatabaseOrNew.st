instance creation
readFromDatabaseOrNew
	^ self selectAll
		ifEmpty: [ self new ]
		ifNotEmpty: [ :persistedManagers | persistedManagers first ]