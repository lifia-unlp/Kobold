accessing
appliedRefactorings

	^self badSmells	inject: OrderedCollection new into: [ :refactorings :smell | refactorings, smell appliedRefactorings ]