private
nonDefaultSelectedTexts

	| nonDefaultSelections |
	nonDefaultSelections := self events select: [:optionSelection | optionSelection optionChanged].
	^nonDefaultSelections collect: [:optionSelection | optionSelection selectionText]