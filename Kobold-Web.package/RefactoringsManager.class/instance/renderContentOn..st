rendering
renderContentOn: html
	html heading
		level: 3;
		with: 'Active Usability Refactorings'.
	
	self renderBreadcrumbOn: html.
	html
		tbsRow: [ 
			html tbsColumn
				mediumSize: 5;
				class: 'us-group';
				with: [ 
							self version changes firstHalf
								do: [ :change | html render: (EditRefactoringView on: change refactorings first for: change smell in: self version) ] ].
			html tbsColumn
				mediumSize: 5;
				class: 'us-group';
				with: [ 
							self version changes lastHalf
								do: [ :change | html render: (EditRefactoringView on: change refactorings first for: change smell in: self version) ] ] ].
						
	self usDetailsModal: html.
						
		