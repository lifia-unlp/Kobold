editing
editRefactoringModalScript: html
	^ html jQuery ajax script: [ :s | s << (s jQuery: #refactoringModal ) html: [ :r | self editRefactoringModal: r ] ]