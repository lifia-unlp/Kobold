accessing
regularReplaceIndexes
	^ self regular copyWithRegex: '\[\d+\]' matchesReplacedWith: '[*]'