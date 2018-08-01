rendering
searchesRanking: html

	(html div)
		class: 'panel panel-default';
		with: 
				[(html table)
					class: 'table table-striped table-condensed';
					with: 
							[html tableRow: 
									[html tableHeading: 'Position'.
										html tableHeading: 'Search query'.
									html tableHeading: 'Times searched'].
							self valuesRows: html]]