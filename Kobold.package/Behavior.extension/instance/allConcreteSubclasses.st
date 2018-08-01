*Kobold
allConcreteSubclasses
	"Answer an OrderedCollection of the receiver's subclasses and the receiver's descendant's subclasses that have no subclasses of their own. Slightly misleading - might be concrete classes with subclasses."

	^ self allSubclasses reject: [ :subclass | subclass hasSubclasses ]