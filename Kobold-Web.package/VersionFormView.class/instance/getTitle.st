rendering
getTitle
	^ self version tag ifNil: [ 'New Version' ] ifNotNil: [ self version tag ]