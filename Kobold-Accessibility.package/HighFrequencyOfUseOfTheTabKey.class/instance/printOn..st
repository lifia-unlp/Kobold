printing
printOn: aStream
	aStream << self class name .
	aStream << ' for '.
	self scrolled printOn: aStream.
	aStream << ' in '.
	self time printOn: aStream.
	aStream << 'ms '