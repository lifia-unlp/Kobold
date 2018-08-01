scoring map
treeMap
	treeMap ifNil: [ self reloadTreeMap ].
	^ treeMap