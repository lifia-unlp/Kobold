scoring map
parentNodesTreeMapWithRelevance: initialRelevance
	| relevance allButFirst |
	relevance := initialRelevance.
	allButFirst := self parentNodes reject: [ :node | node isStringNode ].
	^ allButFirst
		inject: (self parentNodes first treeMapWithDepth: -1 andRelevance: relevance)
		into: [ :map :parent | 
			| reverseIndex |
			reverseIndex := ((allButFirst indexOf: parent) + 1) * -1.
			relevance := relevance // 2.
			map
				addAll: (parent treeMapWithDepth: reverseIndex andRelevance: relevance);
				yourself ]