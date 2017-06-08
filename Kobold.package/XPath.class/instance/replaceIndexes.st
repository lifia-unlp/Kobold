accessing
replaceIndexes
	^ fullXpath copyWithRegex: '\[\d+\]' matchesReplacedWith: '[*]'