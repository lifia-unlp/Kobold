*Kobold
allOrFirst: count
	"Return first count elements or the complete collection if my size is lower than count"

	^ self first: (count min: self size)