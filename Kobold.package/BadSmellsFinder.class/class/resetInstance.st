instance creation
resetInstance
	| finders |
	finders := SingleBadSmellFinder subclasses collect: [ :finderClass | finderClass new ].
	Instance := self new
		finders: finders asOrderedCollection;
		yourself