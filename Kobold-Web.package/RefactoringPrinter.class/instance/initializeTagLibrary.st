rendering
initializeTagLibrary
	^ String streamContents:  [ :stream |
		stream << '$(".target-versions").selectize({persist: false,valueField: ''name'', labelField: ''tag'', 
		searchField: ["name"], options: ['.
		
		self client versions do: [ :version | stream << (version asJson, ',')].
		
		stream <<  ']});' 	
	].