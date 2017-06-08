printing
creationCode

	^'SelfRefactoring.',self class name, ' fromGetParameters: (Dictionary new 
	at: ''xpath'' put: ',self domElement xpath printString,';
	at: ''url'' put: ',self domElement url asString printString,';
	at: ''timestamp'' put: ',self timestamp asMilliseconds printString,';
	at: ''elementContent'' put: ',self domElement html,';
	at: ''elementLeft'' put: ',self domElement boundingBox left printString,';
	at: ''elementTop'' put: ',self domElement boundingBox top printString,';
	at: ''elementWidth'' put: ',self domElement boundingBox width printString,';
	at: ''elementHeight'' put: ',self domElement boundingBox height printString,';
	yourself)'