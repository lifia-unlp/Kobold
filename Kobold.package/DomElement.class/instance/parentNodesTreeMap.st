scoring map
parentNodesTreeMap
	| relevance allButFirst |
	relevance := 200.
	allButFirst := self parentNodes allButFirst.
	^ allButFirst
		inject: (self parentNodes first treeMapWithDepth: -1 andRelevance: relevance)
		into: [ :map :parent | 
			| reverseIndex |
			reverseIndex := ((allButFirst indexOf: parent) + 1) * -1.
			relevance := relevance // 2.
			map
				addAll: (parent treeMapWithDepth: reverseIndex andRelevance: relevance);
				yourself ]