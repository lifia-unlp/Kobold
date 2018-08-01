printing
groupedValues

	self showGroupedValues
		ifTrue:  [^self badSmell valuesBySimilarity inject: '' into: [:text :collection | text , collection printString]]
		ifFalse: [^'']