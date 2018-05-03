converting
asJson
	^ String streamContents: [ :s | 
		s <<'{'.
		s << '"tag":'.
		s << ('"', self tag, '"').
		s << ', "name":'.
		s << ('"', self versionName, '"').
		s << '}'.
		 ].