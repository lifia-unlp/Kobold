testing
hashFor: usabilityEvent
	^ (usabilityEvent url hash + usabilityEvent upwards hash) hash
	"El algoritmo, como se dijo anteriormente, se basa en una comparación sopesada
de dos aspectos: ubicación en el árbol DOM, y estructura interna"
"gana relevancia la ubicación en el modelo DOM representada como una dirección xpath"