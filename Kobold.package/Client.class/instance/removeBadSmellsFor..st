bad smells
removeBadSmellsFor: smellsFinders "coleccion de finder para el evento"
	self
		badSmells: (self badSmells reject: [ :badSmell | smellsFinders anySatisfy: [ :finder | finder canFind: badSmell ] ])
		"self badSmell retorna la conellccion  de baddsmell parr el findeer
self badSmells reject todos los que  rechazan la condicion
 anySatisfy: responde verdadero si al menos un elemento de la colección satisface la condición representada por el argumento.
		candFiend:badSmell
		^ (badSmell class name , 'Finder') asSymbol == self class name asSymbol si el finder  ess para el bad smell
		existe un finder que cumpla la condicion smellsFinders anySatisfy: [ :finder | finder canFind: badSmell ] 
		"