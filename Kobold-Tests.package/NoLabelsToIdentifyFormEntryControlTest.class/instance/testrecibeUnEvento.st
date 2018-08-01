as yet unclassified
testrecibeUnEvento
| eventClass newEvent parameters client application |
	parameters := self getParametros.

	application := ApplicationManager instance. "es un singleton"
	
	eventClass := servicio class environment at: (parameters at: 'threat') asSymbol. "Busca que existe una clase con el nombre del Smell en el entorno de desarrollo"

	client :=  application clientAtToken: (parameters at: 'token') asSymbol.
	client inspect.
	newEvent := eventClass fromGetParameters: parameters. "eventClass es la classe del evetnto, con fromGetParameters obtinen el timestamp en formato correcto	y retona el UsabilityEvent correspondiente"

	client "Finder"
		addEvent: newEvent;
		save.
	self respondOk.
	