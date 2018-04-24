rendering
renderDetails: html
	super renderDetails: html.
	html paragraph
		with: [ 
			html tbsGlyphIcon iconInfo.
			html
				space;
				text: 'Recurrent values' ].
	html
		tbsRow: [ 
			html tbsColumn
				mediumSize: 3;
				with: [ self pieChart: html ].
			html tbsColumn
				mediumSize: 9;
				with: [ self valuesTable: html ] ]