rendering
valuesRows: html

	| associations |
	associations := self badSmell unsuccessfulSearchesRanking.
	associations doWithIndex: 
			[ :value :position|
			html tableRow: 
					[html tableData: position printString.
					html tableData: value key.
					html tableData: value value printString]]