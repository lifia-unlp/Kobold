accessing
basicElements

	| elems |
	elems := OrderedCollection new.
	self regularNoIndexes regex: '/[^/]+(\[[^]]*\])*'
		matchesDo: [:elem | elems add: elem].
	^elems