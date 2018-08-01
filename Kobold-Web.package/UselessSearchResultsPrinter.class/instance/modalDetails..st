rendering
modalDetails: html
	super modalDetails: html.
	html paragraph
		with: [ 
			html tbsGlyphIcon iconInfo.
			html
				space;
				text: 'Proportion useless search results' ].
	html
		tbsRow: [ 
			html tbsColumn
				mediumSize: 6;
				with: [ self pieChart: html ].
			html tbsColumn
				mediumSize: 6;
				with: [ self valuesTable: html ] ]