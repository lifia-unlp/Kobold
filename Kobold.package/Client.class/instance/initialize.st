initialization
initialize
	| defaultVersion |
	
	usabiltyEvents := OrderedCollection new.
	badsmells := OrderedCollection new.
	token := UUID new asString.
	self persistEvents: false.
	
	defaultVersion := AppVersion name: 'production' tag: 'prod'  description: 'default version of the application. This version cannot be edited' canBeEdited: false. 
	
	versions := OrderedCollection with: defaultVersion.
	self url isEmpty ifFalse: [ defaultVersion generateUrl: self url ].