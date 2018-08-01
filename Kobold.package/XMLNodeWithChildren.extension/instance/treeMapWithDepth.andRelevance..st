*Kobold
treeMapWithDepth: initialDepth andRelevance: initialRelevance
	| map |
	map := Dictionary new.
	self buildTreeMap: map depth: initialDepth relevance: initialRelevance.
	^ map