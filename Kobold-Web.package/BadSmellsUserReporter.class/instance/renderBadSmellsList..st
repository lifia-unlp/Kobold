rendering
renderBadSmellsList: html
	html heading
		level: 3;
		with: 'Usability Smells'.
	html paragraph: 'Found ' , self client badSmells size printString , ' smells.'.
	html
		paragraph: [ 
			self renderReloadButton: html.
			html space.
			self renderShowIgnoredButtonOn: html ].
	html
		tbsRow: [ 
			html tbsColumn
				mediumSize: 6;
				class: 'us-group';
				with: [ self client badSmells firstHalf do: [ :badSmell | html render: badSmell printer ] ].
			html tbsColumn
				mediumSize: 6;
				class: 'us-group';
				with: [ self client badSmells lastHalf do: [ :badSmell | html render: badSmell printer ] ] ].