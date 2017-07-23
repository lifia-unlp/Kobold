printing
valuesTable: html
	html div
		class: 'panel panel-default';
		with: [ html table
				class: 'table table-striped table-condensed';
				with: [ html
						tableRow: [ html tableHeading: 'Value'.
							html tableHeading: 'Times entered' ].
					self valuesRows: html.
					html tableRow
						class: 'danger';
						with: [ html tableData: [ html strong: 'Total' ].
							html tableData: [ html strong: badSmell events size printString ] ].
					self groupedValues ] ]