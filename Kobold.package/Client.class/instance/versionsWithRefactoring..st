accessing
versionsWithRefactoring: aRefactoring
	^ self versions select: [ :version | version hasAppliedRefactoring: aRefactoring ].