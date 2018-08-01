accessing
requiredInputs
	| emptyWhenSubmissionFailed emptyWhenSubmissionSucceeded |
	emptyWhenSubmissionFailed := (self failedSubmissions
		flatCollectAsSet: [ :submission | submission emptyInputs ]) asOrderedCollection.
	emptyWhenSubmissionSucceeded := (self successfulSubmissions
		flatCollectAsSet: [ :submission | submission emptyInputs ]) asOrderedCollection.
	^ emptyWhenSubmissionFailed copyWithoutAll: emptyWhenSubmissionSucceeded