endpoint-post
refactoringsFor: smellId with: someParameters
	| smell refactorings |
	smell := self smellWithId: smellId.
	refactorings := smell new suggestedRefactoringsClasses.
	^ refactorings
		collect: [ :refactoringClass | 
			| refactoring |
			refactoring := refactoringClass new.
			{('id' -> refactoringClass refactoringId).
			('name' -> refactoring name).
			('description' -> refactoring info).
			('additionalAttributes' -> refactoringClass additionalAttributes)} asDictionary ]