accessing
searchParams
	^ self events collect: [ :event | event searchQuery ]