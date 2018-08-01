adding
addEvent: event
	| smellsFinders |

	self events add: event. "agregar el evento a la coleccion de eventos"

	smellsFinders := self findersFor: event."retorna los fidera para el evento"
		
		
	smellsFinders do: [ :finder | finder addEvent: event ]."le envia el evento a todos los finder"

	self persistEvents "persisteenveer boolenno inicialmente en false"
		ifTrue: [ self persistEvent: event ].
	self recalculateBadSmells: smellsFinders