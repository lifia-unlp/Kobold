testing
hashFor: usabilityEvent
	^ usabilityEvent targetURL hash
	"los buscadores de usability smells que afectan una URL particular y no un
elemento DOM, agruparán los eventos con el criterio de la URL afectada, para luego
informar el smell sobre ella."