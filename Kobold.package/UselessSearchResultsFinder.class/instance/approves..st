bad smells
approves: uselessSearchResults

	^(super approves: uselessSearchResults)
		and: [uselessSearchResults noResultsFollowedProportion > self minNoResultsFollowedProportion]