instance creation
fromGetParameters: getParameters
	^ (super fromGetParameters: getParameters)
	
		domElement: (self domElementFrom: getParameters);
		yourself