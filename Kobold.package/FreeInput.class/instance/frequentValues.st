accessing
frequentValues
	
	^(self frequentValuesGroups collect: [ :group | group representative ]) asSet