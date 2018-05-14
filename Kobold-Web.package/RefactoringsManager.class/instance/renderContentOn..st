rendering
renderContentOn: html
	html heading
		level: 3;
		with: 'Active Usability Refactorings'.
	self renderBreadcrumbOn: html.
	html tbsRow
		id: 'show-version-row';
		with: [ html
				tbsColumn: [ html anchor
						class: 'btn';
						class: 'btn-primary';
						url: self version url;
						target: 'blank';
						with: 'Show Version' ]
				mediumSize: 6 ].
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