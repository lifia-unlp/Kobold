printing
creationCode

	^'SelfRefactoring.',self class name, ' fromGetParameters: (Dictionary new 
	at: ''timestamp'' put: ',self timestamp asMilliseconds printString,';
	at: ''elementContent'' put: ''',self domElement html,''';
	at: ''xpath'' put: ''',self domElement xpath printString,''';
	at: ''url'' put: ',self domElement url asString printString,';
	at: ''elementLeft'' put: ',self domElement boundingBox left printString,';
	at: ''elementTop'' put: ',self domElement boundingBox top printString,';
	at: ''elementWidth'' put: ',self domElement boundingBox width printString,';
	at: ''elementHeight'' put: ',self domElement boundingBox height printString,';
	at: ''text'' put: ',self text printString,';
	at: ''time'' put: ',self time printString,';
	at: ''keystrokes'' put: ',self keystrokes printString,';
	at: ''correction'' put: ',self correction printString,';
	yourself)'