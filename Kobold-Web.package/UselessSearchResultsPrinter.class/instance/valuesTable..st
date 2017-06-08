rendering
valuesTable: html

	(html div)
		class: 'panel panel-default';
		with: 
			[
			(html table)
				class: 'table table-striped table-condensed';
				with:
					[self valuesRows: html.
					(html tableRow)
						with: 
								[
									html tableData: [html strong: 'Total'].
									html tableData: [html strong: badSmell timesSearches printString]
								].	
					]
			].