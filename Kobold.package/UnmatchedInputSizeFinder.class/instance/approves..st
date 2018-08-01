bad smells
approves: unmatchedInputSize
	^ (super approves: unmatchedInputSize)
		and: [ (self inputSizeTooLongFor: unmatchedInputSize)
				| (self inputSizeTooShortFor: unmatchedInputSize) ]