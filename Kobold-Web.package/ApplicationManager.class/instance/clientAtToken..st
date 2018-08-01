accessing
clientAtToken: aToken
	^ self clients "obtienen una coleccion de lo clientes de todos los usuario:RegistreredClient"
		detect: [ :client | client hasToken: aToken ] "busca cliente:Cliente de esa coleccion que contenga el token recibido"
		ifNone: [ (InvalidToken token: aToken) signal ] "si no lo tiene no corresponde a un Cliente registrado el token es invalido"
		
	"Si el token existe devuelve el cliente sino devuelve un InvalidToken"