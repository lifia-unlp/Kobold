accessing
badSmellsNotSolvedInVersion: aVersion
	^ self defaultVersion badSmells reject: [ :badSmell | aVersion isSolved: badSmell ]