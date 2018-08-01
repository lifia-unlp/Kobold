instance creation
readFromDatabaseOrNew
	^ self selectAll  "Recupera todos los documentos en la colección de base de datos correspondiente. los ApplicationManager (es un singleton asi que es uno solo)"
		ifEmpty: [ self new ] "si no existe ningun ApplicationManager retorna new ApplitacionManager creando el singleton"
		ifNotEmpty: [ :persistedManagers | persistedManagers first ] "Si existe retorna el primero y unico por ser un singleton"