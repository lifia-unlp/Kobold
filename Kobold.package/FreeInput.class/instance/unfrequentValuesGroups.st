accessing
unfrequentValuesGroups
	
	^self groups select: [:group | group size < self minimumRepetitions]