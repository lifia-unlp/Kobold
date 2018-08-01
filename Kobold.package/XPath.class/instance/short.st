accessing
short

	| x res |
	res := nil.
	x := fullXpath replaceRegex: '\[@class[^]]*\]' withString: ''.
	x regex: '\/[^/]+\[@id=[^"]*"[^"]*"[^"]*\]'
		matchesDo: [:match | res := match , (fullXpath splitOn: match) last].
	res notNil ifTrue: [^res].
	^self regular