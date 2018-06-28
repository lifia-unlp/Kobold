actions
handleError: anException
	| aFile |
	aFile:= FileSystem workingDirectory / 'logs' / (DateAndTime now asString, '.log').
	aFile writeStreamDo: [ :stream | anException signalerContext errorReportOn: stream  ].