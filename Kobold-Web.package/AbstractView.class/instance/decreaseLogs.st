logsActions
decreaseLogs
	self logs do: [ :each | each decreaseLifetime ].
	self clearLogs