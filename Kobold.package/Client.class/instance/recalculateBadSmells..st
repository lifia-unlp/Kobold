bad smells
recalculateBadSmells: findersCollection "finderCollection coleccion de finder para el evento de accesibilidad"
"16 de abril"
	self removeBadSmellsFor: findersCollection.
	findersCollection
		do: [:finder | self badSmells addAll: finder badSmells]."agrega coleecion badSmell todos los badsmell que captura el finder y retorna la colecccion de badSmell"
	^self badSmells