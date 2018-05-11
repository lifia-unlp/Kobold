actions
saveVersion
	self version tag isEmpty
		ifTrue: [ self logs add: (ErrorLog message: 'Version Tag is required' for: 'VersionErrors').
			^ false ].
	(self client validateVersion: self version)
		ifFalse: [ self logs
				add:
					(ErrorLog
						message: 'Already exists a version with tag ' , self version tag
						for: 'VersionErrors').
			^ false ].
	self action = #new
		ifTrue: [ self client addVersion: version ].
	self setVersionURL.
	self client save.
	^ true