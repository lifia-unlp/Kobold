controlling
receiveFile: aFile
	| newEvents |
	newEvents := FLMaterializer materializeFromByteArray: aFile rawContents.
	self client importEvents: newEvents