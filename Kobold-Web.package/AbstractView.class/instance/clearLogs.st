logsActions
clearLogs
	self logs: (self logs select: [ :log | log expired not ])