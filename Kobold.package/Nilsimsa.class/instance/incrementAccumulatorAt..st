hashing
incrementAccumulatorAt: zeroBasedIndex

	| index |
	index := zeroBasedIndex + 1.
	self accumulator at: index put: (self accumulator at: index) + 1