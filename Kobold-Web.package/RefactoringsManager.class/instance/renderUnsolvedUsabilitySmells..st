rendering
renderUnsolvedUsabilitySmells: html
	| unsolvedSmells |
	unsolvedSmells := self client badSmellsNotSolvedInVersion: self version.
	html
		tbsRow: [ html heading
				level: 4;
				with: 'Unsolved Usability Smells'.
			html
				tbsColumn: [ unsolvedSmells firstHalf do: [ :smell | html render: smell printer ] ]
				mediumSize: 6.
			html
				tbsColumn: [ unsolvedSmells lastHalf do: [ :smell | html render: smell printer ] ]
				mediumSize: 6 ]