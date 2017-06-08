bad smells
approves: shortInput

	^(super approves: shortInput)
		and: [shortInput exceededInputsProportion > self minimumExceededInputsProportion]