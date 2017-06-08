accessing
interruptPerVisitAverage

	^(self totalInterruptions 
		/ self interruptedPageVisitsCount) asFloat