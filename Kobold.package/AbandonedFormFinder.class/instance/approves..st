bad smells
approves: boringForm

	^(super approves: boringForm)
		and: [boringForm failsProportion > self minimumFailsProportion]