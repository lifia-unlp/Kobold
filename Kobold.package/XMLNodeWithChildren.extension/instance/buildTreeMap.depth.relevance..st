*Kobold
buildTreeMap: map depth: depth relevance: relevance
	"Children's relevance used to be: relevance // (self uniqueTagNodes size max: 1)"

	| key childrenRelevance |
	key := depth printString , '@' , self name.
	relevance > 0
		ifTrue: [ map at: key put: relevance.
			self addAlternativeEntriesTo: map atDepth: depth relevance: relevance.
			childrenRelevance := relevance.
			self nodes
				do:
					[ :node | node buildTreeMap: map depth: depth + 1 relevance: childrenRelevance ] ]