*Kobold
allOrLast: count
	"Return last count elements or the complete collection if my size is lower than count"

	^ self last: (count min: self size)