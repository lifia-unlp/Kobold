bad smells
approves: boringForm
		boringForm inspect."aqui hay que preguntar"
	^(super approves: boringForm)

	   and: [boringForm failsProportion > self minimumFailsProportion]