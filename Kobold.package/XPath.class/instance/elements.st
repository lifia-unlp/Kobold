accessing
elements

	| elems |
	elems := OrderedCollection new.
	self replaceIndexes regex: '/[^/]+(\[[^]]*\])*'
		matchesDo: [:elem | elems add: elem].
	^elems