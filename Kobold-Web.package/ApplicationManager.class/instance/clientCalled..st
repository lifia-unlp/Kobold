accessing
clientCalled: aString  "busca un usuario (RegisteredClient) llamado aString y retorna su client:Client"
	^ (self users detect: [ :user | user called: aString ]) client