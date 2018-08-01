*Kobold
addAttributeAlternativeEntriesTo: map atDepth: depth relevance: relevance
	self attributes keys
		do: [ :attributeName | 
			| key |
			key := depth printString , '@' , self name , '-' , attributeName.
			map at: key put: relevance ]
		without: 'class'