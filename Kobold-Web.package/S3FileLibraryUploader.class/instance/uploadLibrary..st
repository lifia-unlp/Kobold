api
uploadLibrary: aWAFileLibraryClass
	| library |
	library := aWAFileLibraryClass default.
	library deployFiles.
	library fileSelectors
		do: [ :selector | self uploadFileForSelector: selector ofLibrary: library ]