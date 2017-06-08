bad smells
approves: badSmell

	^(super approves: badSmell)
		and: [badSmell averageTime > self toleratedMilliseconds]