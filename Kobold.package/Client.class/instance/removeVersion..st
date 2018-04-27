removing
removeVersion: anAppVersion
	anAppVersion canBeEdited
		ifFalse: [ ^ self ].
	
	self versions remove: anAppVersion.

	"after the version removal, removes refactorings from bad smells that are not present in any version"
	anAppVersion changes do: [ :change |
		change refactorings select: [ :ref | (self versionsWithRefactoring: ref) isEmpty ] 
		thenDo: [ :ref | change smell removeRefactoring: ref ]
	]