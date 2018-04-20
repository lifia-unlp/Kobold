actions
saveVersion
	
	(self client validateVersion: self version) ifFalse: [  
		self logs add: (ErrorLog message: ('Already exists a version with tag ', self version tag) for: 'VersionErrors' ). 
		^false].
	
	(self action = #new) ifTrue: [ self client addVersion: version ].
	self client save.
	^true