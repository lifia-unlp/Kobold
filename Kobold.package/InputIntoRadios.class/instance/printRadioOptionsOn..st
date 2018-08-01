code generation
printRadioOptionsOn: aStream
	self values
		do: [ :value | 
			| localMacros |
			localMacros := Dictionary with: #id -> UUIDGenerator next with: #value -> value.
			aStream
				<<
					('\{elementVarName}.after("<p><input type=''radio'' name=''\{name}'' id=''{id}'' value=''{value}''><label style=''cursor:pointer'' for=''{id}''>{value}</label></p>");'
						format: localMacros) ]