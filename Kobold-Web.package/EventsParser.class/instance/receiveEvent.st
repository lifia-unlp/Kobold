rest api
receiveEvent
	<post>
	<path: '/'>
	| eventClass newEvent parameters client application |
	parameters := self requestContext request fields.
parameters inspect.
	application := ApplicationManager instance. "es un singleton"
	"((parameters at: 'threat') asSymbol) inspect."
	eventClass := self class environment at: (parameters at: 'threat') asSymbol. "Busca que existe una clase con el nombre del Smell en el entorno de desarrollo"

"eventClass inspect."



	client := [ application clientAtToken: (parameters at: 'token') asSymbol ]"busca un cliente registrado con el token recibido  Sentencias Smalltalk encerradas entre corchetes se convierten en un objeto de clase BlockContext. ¿Para que sirve eso?, sirve para lo que sirven todos los objetos: para enviarles mensajes"
		on: InvalidToken
		do: [ :ex | self respondInvalidTokenError ]."[ 1 / 0 ] on: ZeroDivide do: [ Transcript showln: 'Oops! Zero divide!'].  "
		"[ application clientAtToken: (parameters at: 'token') asSymbol ] devuelve un InvalidToken que no existe el token sino un objeto client (name token badsmells finders usabiltyEvents persistEvents)"
	newEvent := eventClass fromGetParameters: parameters. "eventClass es la classe del evetnto, con fromGetParameters obtinen el timestamp en formato correcto	y retona el UsabilityEvent correspondiente"
newEvent  inspect.
	client "Finder"
		addEvent: newEvent;
		save.
	self respondOk.
	