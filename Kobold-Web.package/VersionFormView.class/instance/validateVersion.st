validation
validateVersion
	self version tag isEmpty
		ifTrue: [ self logs add: (ErrorLog message: 'Version Tag is required' for: 'VersionErrors').
			^ false ].
	self hasValidTag
		ifFalse: [ self logs
				add:
					(ErrorLog
						message: 'Already exists a version with tag ' , self version tag
						for: 'VersionErrors').
			^ false ].
	
	self setVersionURL.
	self saveVersion.
	self client save.
	^ true