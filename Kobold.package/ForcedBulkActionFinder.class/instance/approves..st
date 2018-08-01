bad smells
approves: unnecessaryBulkAction

	^(super approves: unnecessaryBulkAction) and: 
			[unnecessaryBulkAction singlesProportion >= self minimumSinglesProportion]