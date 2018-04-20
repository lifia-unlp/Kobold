rendering
initializeTagLibrary
	^ String streamContents:  [ :stream |
		stream << 'var parameters = {persist: false,valueField: ''name'', labelField: ''tag'', 
		searchField: ["name"], options: ['.
		
		self client versions do: [ :version | stream << (version asJson, ',')].		
		
		stream <<  ']};' 	
	].