accessing
similarKeyOrAnswer: candidateKey

	| similarKeys |
	similarKeys := self smellsByCriterion keys select: 
					[:key |
					(Nilsimsa compareDigest: candidateKey with: key) > self nilsimsaTolerance].
	similarKeys isEmpty
		ifTrue: [^candidateKey]
		ifFalse: 
			[^(similarKeys asSortedCollection: 
					[:lessSimilar :moreSimilar |
					(Nilsimsa compareDigest: candidateKey with: lessSimilar)
						> (Nilsimsa compareDigest: candidateKey with: moreSimilar)])
				first]