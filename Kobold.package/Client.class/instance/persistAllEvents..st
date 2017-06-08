persisting
persistAllEvents: events
	FileStream
		forceNewFileNamed: self filePath
		do: [ :aStream | FLSerializer newDefault serialize: events on: aStream binary ]