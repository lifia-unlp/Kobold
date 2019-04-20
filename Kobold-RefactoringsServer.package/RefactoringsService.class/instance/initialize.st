initialization
initialize
	super initialize.
	teapot := Teapot
		configure:
			{(#defaultOutput -> #json).
			(#debugMode -> true)}.
	self
		initializeGetMethods;
		initializePostMethods.
	teapot start