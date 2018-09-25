instance creation
domElementFrom: getParameters
|listElement listDocumentElement|
listDocumentElement:= OrderedCollection new.
listElement:=((getParameters at: 'xpaths') substrings:'&') asOrderedCollection.
(listElement) do:[:element |
	listDocumentElement add:(DomElement xpath:element url:(ZnUrl fromString: (getParameters at: 'url')))].
^listDocumentElement.