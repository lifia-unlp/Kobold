initialization
allFinders
	finders := UsabilitySmellFinder allConcreteSubclasses
		collect: [ :finderClass | finderClass new ].
	^ finders asOrderedCollection