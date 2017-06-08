*Kobold
allPairsCollect: aBlock
	| newCollection |
	newCollection := self species new: self size.
	self
		allPairsDo:
			[ :element1 :element2 | newCollection add: (aBlock value: element1 value: element2) ].
	^ newCollection