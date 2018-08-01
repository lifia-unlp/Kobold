initialization
initialize
	super initialize.
	views := OrderedCollection new. "crea una coleccion de vistas"
	self view: self user landingView. "agrea las vistar para cada elemento de nav"
	views add: BadSmellsUserReporter new.
	views add: RefactoringsManager new.
	views add: UsabilityEventsView new.
	views add: TrackingCodeView new. "vista para embeber la aplicacion"
	views add: TrackingCodeViewAccessibility  new. "flap containing the code to embed on the page to capture the accessibility events"
	views add: ConfigurationView new.
	views add: AboutView new.
	self session announcer "anunciador Declara que cuando se lanza CallView se ejecuta el bloque"
		when: CallView
		do: [ :announcement | self view call: announcement view ]