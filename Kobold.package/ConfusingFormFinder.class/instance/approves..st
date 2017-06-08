bad smells
approves: confusingForm

	^(super approves: confusingForm)
		and: [confusingForm failsProportion > self minimumFailsProportion]