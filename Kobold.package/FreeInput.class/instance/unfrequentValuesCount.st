accessing
unfrequentValuesCount

	^self unfrequentValuesGroups inject: 0
		into: [:count :group | count + group size]