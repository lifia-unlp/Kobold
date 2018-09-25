instance creation
fromGetParameters: getParameters
	| listElement |
"listElement:=((getParameters at: 'xpaths') substrings:'&') asOrderedCollection."
listElement:=self domElementFrom:getParameters.
^ (super fromGetParameters: getParameters) listElement: listElement.