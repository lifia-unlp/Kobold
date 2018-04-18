searching
versionTagged: aString
	^ self versions detect: [ :v | v tag = aString  ] ifFound: [ :v | v] ifNone: [ nil ]