bad smells
approves: noDefaultValue

	^(super approves: noDefaultValue)
		and: [noDefaultValue mostSelectedOptionRate >= self minimumRate ]