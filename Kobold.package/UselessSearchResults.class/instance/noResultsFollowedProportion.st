accessing
noResultsFollowedProportion
	( self timesSuccessfulSearches = 0 ) 
		ifFalse:
			[^self  timesResultsNotFollowed / self timesSuccessfulSearches]
		ifTrue: [^0]