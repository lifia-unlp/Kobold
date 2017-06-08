accessing
elementXpath
	^ self domElement xpath printString copyReplaceAll: '"' with: '\"'