accessing
regular
	^ fullXpath copyWithRegex: '(\[@id[^]]*\]|\[@class[^]]*\])' matchesReplacedWith: ''