rendering
renderUnsolvedUsabilitySmells: html
	| unsolvedSmells |
	unsolvedSmells := self client badSmellsNotSolvedInVersion: self version.
	html
		tbsRow: [ html heading
				level: 4;
				with: 'Unsolved Usability Smells'.
			unsolvedSmells ifEmpty: [ html paragraph: 'No unsolved Usability Smells' ].
			html tbsColumn
				class: 'us-group';
				with:
						[ unsolvedSmells firstHalf do: [ :smell | html render: (smell printerFor: self version) ] ];
				mediumSize: 6.
			html tbsColumn
				class: 'us-group';
				with:
						[ unsolvedSmells lastHalf do: [ :smell | html render: (smell printerFor: self version) ] ];
				mediumSize: 6 ]