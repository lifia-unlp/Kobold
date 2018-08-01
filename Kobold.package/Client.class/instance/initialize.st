initialization
initialize
	usabiltyEvents := OrderedCollection new.
	badsmells := OrderedCollection new.
	token := UUID new asString.
	finders := self allFinders.
	
	self persistEvents: false "cambia el valor del la varialbe de intancia persistenEvent=false"