as yet unclassified
showBadSmellInfo
	self session announcer
		announce: (CallView view: (BadSmellView on: self badSmell))