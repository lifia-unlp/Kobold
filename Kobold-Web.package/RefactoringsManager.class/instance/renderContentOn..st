rendering
renderContentOn: html
	html heading
		level: 3;
		with: 'Active Usability Refactorings'.
	html
		tbsRow: [ 
			html tbsColumn
				mediumSize: 6;
				class: 'us-group';
				with: [ 
							self refactoredSmells firstHalf
								do: [ :smell | html render: (RefactoringPrinter on: smell appliedRefactorings first for: smell) ] ].
			html tbsColumn
				mediumSize: 6;
				class: 'us-group';
				with: [ 
							self refactoredSmells lastHalf
								do: [ :smell | html render: (RefactoringPrinter on: smell appliedRefactorings first for: smell) ] ] ]