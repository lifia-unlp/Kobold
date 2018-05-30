rendering
renderAppliedRefactorings: html
	html
		tbsRow: [ html heading
				level: 4;
				with: 'Applied Usability Refactorings'.
			html tbsColumn
				mediumSize: 6;
				class: 'us-group';
				with: [ self version changes ifEmpty: [ html paragraph: 'No refactorings applied.' ].
					self version changes firstHalf
						do: [ :change | self renderRefactoringsFor: change on: html ] ].
			html tbsColumn
				mediumSize: 6;
				class: 'us-group';
				with: [ self version changes lastHalf
						do: [ :change | self renderRefactoringsFor: change on: html ] ] ]