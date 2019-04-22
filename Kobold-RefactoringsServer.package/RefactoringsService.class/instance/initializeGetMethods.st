endpoint-get
initializeGetMethods
	teapot
		GET: 'api/smells' -> self smells;
		GET: 'api/smells/<smellId>' -> [ :req | self smellDetailsWithId: (req at: #smellId) asNumber ]