code generation
printElementScriptOn: aStream
	self
		printHideInputScriptOn: aStream;
		printOtherInputOn: aStream;
		printRadioOptionsOn: aStream;
		printRadiosHandlerOn: aStream