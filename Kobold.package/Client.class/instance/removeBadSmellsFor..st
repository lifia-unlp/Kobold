bad smells
removeBadSmellsFor: smellsFinders
	self
		badSmells: (self badSmells reject: [ :badSmell | smellsFinders anySatisfy: [ :finder | finder canFind: badSmell ] ])