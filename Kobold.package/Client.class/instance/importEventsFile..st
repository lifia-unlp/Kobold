persisting
importEventsFile: aFilePath
	| events |
	events := FLMaterializer materializeFromFileNamed: aFilePath.
	self importEvents: events