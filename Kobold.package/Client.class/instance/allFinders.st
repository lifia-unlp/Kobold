initialization
allFinders
	finders := SingleBadSmellFinder allConcreteSubclasses
		collect: [ :finderClass | finderClass new ].
	^ finders asOrderedCollection