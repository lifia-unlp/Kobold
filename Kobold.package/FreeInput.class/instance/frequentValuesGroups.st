accessing
frequentValuesGroups
	
	^self groups select: [:group | group size >= self minimumRepetitions]