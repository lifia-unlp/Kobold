tests
testNewEvent
| eventClass newEvent parameters client application url|
	

	parameters := self getParametros.
		url:=(ZnUrl fromString: (parameters at: 'url')).
				url inspect.
	parameters inspect.
		eventClass := servicio class environment at: (parameters at: 'threat') asSymbol.
		
		eventClass domElement: parameters.
		eventClass inspect.

		