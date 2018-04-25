rendering
removeVersionScript: html version: aVersion
	| badSmellComponent |
	
	badSmellComponent:= BadSmellView on: self smell.
	
	^ (html jQuery ajax) 
		script: [ :s |  
			self removeRefactoringFrom: aVersion. 
			s << (s jQuery id: ('tags-', self refactoring refactoringId ) ) html: [ :r | self renderTargetVersionsTags: r ].
		      
			"re-render recommended refactorings to update availables versions of this refactoring"
			s <<  (s jQuery id: 'recommended-refactorings') html: [ :r | badSmellComponent renderRecommendedRefactorings: r].
			
			"re-render applied refactorings to delete this refactoring if aVersion was the unique in which the refactoring was applied"
			s <<  (s jQuery id: 'applied-refactorings') html: [ :r | badSmellComponent renderAppliedRefactorings: r ].
		].