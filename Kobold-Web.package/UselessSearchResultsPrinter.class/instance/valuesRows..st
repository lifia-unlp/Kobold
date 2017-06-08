rendering
valuesRows: html

	| values sortedKeys |
	values := self badSmell valuesResults.
	sortedKeys := values keys asSortedCollection.
	sortedKeys do: [:value |
			html tableRow: 
					[html tableData: value.
					html tableData: [html strong: (values at: value) printString]]].