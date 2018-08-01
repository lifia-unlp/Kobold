accessing
unsuccessfulSearchesRanking
	"Answer an associations collection where keys are the queries and values are the times searched."

	| sortedSearches groupedSearches|
	groupedSearches := self unsuccessfulSearches groupedBy: [:search | search searchQuery].
	sortedSearches :=  groupedSearches asSortedCollection: [:searchesA :searchesB | searchesA size >searchesB size].
	^(sortedSearches collect: [:searches | (searches any searchQuery) -> searches size]) allOrFirst: 5