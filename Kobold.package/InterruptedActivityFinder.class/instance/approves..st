bad smells
approves: badSmell
	^(super approves: badSmell)
		and: [(badSmell interruptAverageTime > self toleratedTimeAverage)
			and: [badSmell interruptedVisitsProportion >= self minimumInterruptedAverage]
			].