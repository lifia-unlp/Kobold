accessing
regularNoIndexes
	^ self regular copyWithRegex: '\[\d+\]' matchesReplacedWith: ''