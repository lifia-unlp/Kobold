accessing
cacheSmell: smell
	"We cannot simply store a Set because of VOMongo contraints"

	"TODO: Fix VOMongo instead of doing this aberration"

	cachedSmells := (cachedSmells copyWith: smell) asSet asOrderedCollection