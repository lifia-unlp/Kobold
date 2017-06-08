accessing
valuesList
	
	^(self values inject:'' into: [:valuesList :value | valuesList, '"', value, '", ']) allButLast: 2