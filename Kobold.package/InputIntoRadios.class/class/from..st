instance creation
from: aFreeInput
	^ (super from: aFreeInput)
		values: aFreeInput frequentValues;
		yourself