bad smells
approves: unmatchedInputSize
	^ (super approves: unmatchedInputSize)
		and: [ unmatchedInputSize exceededInputsProportion > self minimumExceededInputsProportion
				or: [ unmatchedInputSize shortTextsProportion > self minimumShortTextsProportion ] ]