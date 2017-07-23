accessing
valuesString
	^ String
		streamContents: [ :stream | 
			self values
				do: [ :value | stream << value ]
				separatedBy: [ stream << (String with: Character cr) ] ]