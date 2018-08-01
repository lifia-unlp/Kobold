accessing
dataObjects
	^ String
		streamContents:
			[ :stream | self values keys do: [ :key | stream << (self dataObjectFor: key) ] separatedBy: [ stream << ',' ] ]