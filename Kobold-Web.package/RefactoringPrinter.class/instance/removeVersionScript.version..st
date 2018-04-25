rendering
removeVersionScript: html version: aVersion
	^ (html jQuery ajax) 
		script: [ :s |  self removeRefactoringFrom: aVersion. 
			s << (s jQuery id: ('tags-', self refactoring refactoringId ) ) html: [ :r | self renderTargetVersionsTags: r ] ]