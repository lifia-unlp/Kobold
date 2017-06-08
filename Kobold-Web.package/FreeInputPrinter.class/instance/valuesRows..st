printing
valuesRows: html

	| values sortedKeys |
	values := self badSmell valuesWithOccurrences.
	sortedKeys := values keys asSortedCollection.
	sortedKeys do: [:value |
			html tableRow: 
					[html tableData: value.
					html tableData: (values at: value) printString]]