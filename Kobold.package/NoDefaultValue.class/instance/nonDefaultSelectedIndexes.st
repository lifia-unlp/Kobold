private
nonDefaultSelectedIndexes

	| nonDefaultSelections |
	nonDefaultSelections := self events select: [:optionSelection | optionSelection optionChanged].
	^nonDefaultSelections collect: [:optionSelection | optionSelection selectionIndex]