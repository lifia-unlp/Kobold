seaside
turnOffDebugging
	self applicationNames
		do:
			[ :appName | (WAAdmin defaultDispatcher handlerAt: appName) exceptionHandler: WAHtmlErrorHandler ]