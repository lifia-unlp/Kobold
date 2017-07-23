accessing - macros
valuesList
	^ String
		streamContents:
			[ :stream | self values do: [ :value | stream << value printString ] separatedBy: [ stream << ',' ] ]