*Kobold
addClassAlternativeEntriesTo: map atDepth: depth relevance: relevance
	self cssClasses
		do: [ :className | 
			| key |
			key := depth printString , '@' , self name , '.' , className.
			map at: key put: relevance ]
		without: 'highlight'