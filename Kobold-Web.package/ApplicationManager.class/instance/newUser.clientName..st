instance creation
newUser: aUser clientName: aName
	aUser client: (Client named: aName). "(aUser:RegisteredClient y aName:string) Agrega un cliente:Cliente con el nombre aName al aUser:RegisteredClient"
	self users add: aUser. "agrega al nuevo usuaro a la coleccion de clientes"
	self save "persiste los datos en la base de datos"