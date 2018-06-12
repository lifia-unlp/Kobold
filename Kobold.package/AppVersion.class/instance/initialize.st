initialization
initialize
	changes := OrderedCollection new.
	canBeEdited := true.
	usabilityEvents := OrderedCollection new.
	badSmells := OrderedCollection new.
	finders := self allFinders.