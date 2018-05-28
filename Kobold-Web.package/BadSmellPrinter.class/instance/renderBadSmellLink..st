rendering
renderBadSmellLink: html
	self version isNil ifTrue: [ self renderBadSmellViewLink: html ] ifFalse: [ self renderBadSmellModalLink: html ]