accessing
clients
	^ self users collect: #client "de la coleccion de usuario que son de tipo RegisteredClient obtiene una nueva colleccion que contienen solo los clientes:Cliente de cada una"
	 
"	
collect: aBlock bloque con un parámetro, evalua en cualquier cosa
evalua el argumento aBlock para cada uno de los elementos del receptor
genera una nueva coleccion del mismo tipo que el receptor, y para cada
elemento del receptor agrega el resultado de aplicarle aBlock"