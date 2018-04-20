rendering
renderContentOn: html
	html heading
		level: 3;
		with: 'Active Usability Refactorings'.
	
	self renderBreadcrumbOn: html.
	html
		tbsRow: [ 
			html tbsColumn
				mediumSize: 6;
				class: 'us-group';
				with: [ 
							self version changes firstHalf
								do: [ :change | html render: (RefactoringPrinter on: change refactorings first for: change smell) ] ].
			html tbsColumn
				mediumSize: 6;
				class: 'us-group';
				with: [ 
							self version changes lastHalf
								do: [ :change | html render: (RefactoringPrinter on: change refactorings first for: change smell) ] ] ]