adding
addEvent: usabilityEvent to: finder
	self smells "coleccion de smell"
		detect: [ :smell | self event: usabilityEvent belongsIn: smell ]"si detecta un smell de la coleccion que tiene identico docElement que ussabittityyEvent"
		ifFound: [ :smell | smell addEvent: usabilityEvent ] "si encuentra el smell le agrega un evento mas"
		ifNone: "si no encuetnra"
			[ self addSmellWithEvent: usabilityEvent to: finder ] "agregar el evento con el findeer por primeer vez"