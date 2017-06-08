accessing
requiredInputs
	^ (self failedSubmissions flatCollectAsSet: [ :submission | submission emptyInputs ])
		asOrderedCollection
		copyWithoutAll:
			(self successfulSubmissions flatCollectAsSet: [ :submission | submission emptyInputs ])
				asOrderedCollection