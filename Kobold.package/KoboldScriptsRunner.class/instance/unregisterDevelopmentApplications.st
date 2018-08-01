seaside
unregisterDevelopmentApplications
	WADispatcher default handlers
		keysAndValuesDo: [ :handlerName :handler | 
			(self applicationNames includes: handlerName)
				ifFalse: [ WADispatcher default unregister: handler ] ]