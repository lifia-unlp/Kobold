endpoint-post
refactoringsFor: smellId with: someParameters
	| smell refactorings |
	smell := self smellWithId: smellId.
	refactorings := someParameters
		ifEmpty: [ [ smell new suggestedRefactoringsClasses ]
				on: Error
				do:
					[ ^ {('error' -> 'This smell requires extra attributes for recommending refactorings.')} asDictionary ] ]
		ifNotEmpty: [ smell new suggestedRefactoringsClassesFrom: someParameters ].
	^ refactorings
		collect: [ :refactoringClass | 
			| refactoring |
			refactoring := refactoringClass new.
			{('id' -> refactoringClass refactoringId).
			('name' -> refactoring name).
			('description' -> refactoring info).
			('additionalAttributes' -> refactoringClass additionalAttributes)} asOrderedDictionary ]