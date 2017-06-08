logsActions
getLogs: aHtmlClass
	^ self logs select: [ :log | log destination = aHtmlClass ]