rendering
modalDetails: html

	super modalDetails: html.
	html paragraph with: 
			[html tbsGlyphIcon iconInfo.
			html
				space;
				text: 'Top 5 unsuccessful search queries'].
	self searchesRanking: html