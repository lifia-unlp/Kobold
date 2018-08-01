scoring map
treeMapSimilitudeRateWith: aDomElement
	| myTreeMap otherTreeMap commonKeys commonRate |
	myTreeMap := self treeMap.
	otherTreeMap := aDomElement treeMap.
	commonKeys := myTreeMap keys intersection: otherTreeMap keys.
	commonRate := commonKeys
		sumNumbers: [ :commonKey | (myTreeMap at: commonKey) max: (otherTreeMap at: commonKey) ].
	^ (commonRate * 2 / (myTreeMap values sum + otherTreeMap values sum)) asFloat