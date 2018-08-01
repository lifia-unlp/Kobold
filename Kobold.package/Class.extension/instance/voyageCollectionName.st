*Kobold
voyageCollectionName
	"This method can be overridden with a more meaningful collection name" 
	^ ((self persistentClass printString  first: 3) allSatisfy: #isUppercase)
		ifTrue: [ (self persistentClass printString  allButFirst: 2) ] 
		ifFalse: [ self persistentClass printString  ]