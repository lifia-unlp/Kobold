testing
event: usabilityEvent belongsIn: aSmell
"Comparar las secucneias que sean iguales
dos orderes collection son iguales si son iguals todos sus elemento
myOC1:= OrderedCollection new add: 'Hello'; add: 'Goodbye'.
myOC2:= OrderedCollection new add: 'Hello'; add: 'Goodbye'.
myOC1==myOC2
"
	^ aSmell events
		anySatisfy: [ :smellEvent | usabilityEvent listElement = smellEvent listElement ]
		"domElement es un menssaje de  UsaabilitySmellOnElement"