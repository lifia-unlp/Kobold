rendering
renderContentOn: html
	html heading
		level: 3;
		with: 'Active Usability Refactorings'.
	self renderBreadcrumbOn: html.
	self renderShowVersionButtonOn: html.
	html
		tbsRow: [ html tbsColumn
				mediumSize: 5;
				class: 'us-group';
				with: [ self version changes firstHalf
						do: [ :change | self renderRefactoringsFor: change on: html ] ].
			html tbsColumn
				mediumSize: 5;
				mediumOffset: 2;
				class: 'us-group';
				with: [ self version changes lastHalf
						do: [ :change | self renderRefactoringsFor: change on: html ] ] ].
	self usDetailsModal: html