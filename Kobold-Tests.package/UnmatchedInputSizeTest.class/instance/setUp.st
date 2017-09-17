running
setUp
	| mockEvents |
	lengths := {100 . 300 . 220 . 220 . 224 . 142} asOrderedCollection.
	mockEvents := OrderedCollection new.
	lengths do: [ :length | mockEvents add: (self newTextInputWithTextLength: length) ].
	smellShort := UnmatchedInputSize events: mockEvents