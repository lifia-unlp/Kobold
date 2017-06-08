persisting
persistEvent: event

	self bos setToEnd.
	[self bos nextPut: event] ensure: [self bos close]