bad smells
approves: unformattedInput

	^(super approves: unformattedInput)
		and: [unformattedInput formattedProportion >= self minimumProportion]