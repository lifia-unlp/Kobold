accessing
interruptedPageVisits

	^self events select: [ :pageVisit| pageVisit interrupted ]