instance creation
fromGetParameters: getParameters

	^(super fromGetParameters: getParameters)
		numberOfItems: (getParameters at: 'checkedItems') asNumber;
		yourself