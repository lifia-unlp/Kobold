accessing
badSmellsNotSolvedInVersion: aVersion
	^ self badSmells reject: [ :badSmell | aVersion isSolved: badSmell ]