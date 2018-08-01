binary storage
binaryReaderBlockForVersion: oldVersion format: oldFormat

	| newThreat |
	oldVersion isNil
		ifTrue: 
			[^
			[:oldThreat |
			| newVariables oldVariables |
			newThreat := self new.
			newVariables := self allInstVarNames.
			oldVariables := oldThreat asOrderedCollection, (OrderedCollection with: 1).
			1 to: newVariables size do: [:i | newThreat instVarNamed: (newVariables at: i) put: (oldVariables at: i)].
			oldThreat become: newThreat]
			]