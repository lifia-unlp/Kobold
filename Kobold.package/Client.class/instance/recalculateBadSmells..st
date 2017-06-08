bad smells
recalculateBadSmells: findersCollection

	self removeBadSmellsFor: findersCollection.
	findersCollection
		do: [:finder | self badSmells addAll: finder badSmells].
	^self badSmells