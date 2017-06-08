private
recalculateValuesWithOccurrences

	|valuesTable|
	valuesTable := Dictionary new.
	self frequentValuesGroups do: [:group | valuesTable at: group representative put: group size].
	valuesTable at: 'Other' put: self unfrequentValuesCount.
	valuesWithOccurrences := valuesTable.