endpoint-post
refactoringCode: refactoringId with: body
	| refactoringClass refactoring |
	refactoringClass := self refactoringWithId: refactoringId.
	refactoring := refactoringClass fromRESTParameters: body.
	^ {('initializationScript' -> refactoringClass initializationScript).
	('script' -> refactoring script)} asOrderedDictionary