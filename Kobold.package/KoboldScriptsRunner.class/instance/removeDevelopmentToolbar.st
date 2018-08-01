seaside
removeDevelopmentToolbar
	| configuration |
	configuration := (WADispatcher default handlerAt: 'Home') configuration.
	configuration takeValue: {} forAttribute: (configuration attributeAt: #rootDecorationClasses)