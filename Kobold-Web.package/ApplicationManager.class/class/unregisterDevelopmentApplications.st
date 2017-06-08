deployment
unregisterDevelopmentApplications
	| requiredHandlersNames allHandlers |
	requiredHandlersNames := #('Home' 'Threats' 'RefactoringsServer' 'files').
	allHandlers := WADispatcher default handlers.
	allHandlers
		keysAndValuesDo: [ :handlerName :handler | 
			(requiredHandlersNames includes: handlerName)
				ifFalse: [ WADispatcher default unregister: handler ] ]