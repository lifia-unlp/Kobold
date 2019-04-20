endpoint-post
refactoringsFor: smellId
	^ (UsabilitySmell allConcreteSubclasses copyWithout: ConfusingForm)
		collectWithIndex: [ :smellClass :index | 
			| smell |
			smell := smellClass new.
			{('id' -> index).
			('name' -> smell name).
			('description' -> smell info)} asDictionary ]