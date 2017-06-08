scoring map
reloadTreeMap
	| barSize innerInitialRelevance outerInitialRelevance |
	barSize := 10.
	innerInitialRelevance := self height * 10.
	outerInitialRelevance := (barSize - self height max: 0) * 10.
	treeMap := self tree treeMapWithDepth: 0 andRelevance: innerInitialRelevance.
	self parentNodes
		ifNotEmpty: [ :parents | treeMap addAll: (self parentNodesTreeMapWithRelevance: outerInitialRelevance) ]