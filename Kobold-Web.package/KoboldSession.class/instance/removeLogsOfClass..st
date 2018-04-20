removing
removeLogsOfClass: aClass
	self logs removeAllSuchThat: [ :log | log destination = aClass ].