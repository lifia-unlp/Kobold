endpoint-get
initializeGetMethods
	teapot
		GET: '/smells' -> self smells;
		GET: '/smells/<smellId>' -> [ :req | self smellDetailsWithId: (req at: #smellId) asNumber ]