endpoint-get
smells
	^ self allSmellsClasses
		collectWithIndex: [ :smellClass :index | 
			| smell |
			smell := smellClass new.
			{('id' -> smellClass smellId).
			('name' -> smell name).
			('description' -> smell info).
			('attributes' -> smellClass recommendationHelperAttributes)} asOrderedDictionary ]