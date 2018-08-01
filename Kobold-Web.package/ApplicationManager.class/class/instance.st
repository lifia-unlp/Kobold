instance creation
instance
	^ Instance ifNil: [ Instance := self readFromDatabaseOrNew ] "La variable de Clase Instancia almacena el Singleton, si es nula crea uno sino responde la instancia"