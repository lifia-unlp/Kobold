accessing
valuesResults

	|valuesTable|
	valuesTable := Dictionary new.
	valuesTable at: 'No Results' put: self timesUnsuccessfulSearches.
	valuesTable at: 'Followed' put: self timesResultsFollowed.
	valuesTable at: 'Not Followed' put: self timesResultsNotFollowed.
	^valuesTable.