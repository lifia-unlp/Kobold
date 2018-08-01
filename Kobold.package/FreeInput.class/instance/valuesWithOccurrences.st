accessing
valuesWithOccurrences

	valuesWithOccurrences ifNil: [self recalculateValuesWithOccurrences].
	^valuesWithOccurrences