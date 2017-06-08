bad smells
approves: scarceSearchResults

	^(super approves: scarceSearchResults)
		and: [scarceSearchResults noResultsProportion > self minimumNoResultsProportion]