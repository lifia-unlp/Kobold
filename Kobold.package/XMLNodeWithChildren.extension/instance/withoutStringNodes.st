*Kobold
withoutStringNodes
	| copy oldNodes |
	copy := self copy.
	oldNodes := (copy nodes copyWithoutAll: copy nodes stringNodes)
		collect: [ :node | node withoutStringNodes ].
	copy removeNodes.
	copy addNodes: oldNodes.
	^ copy