accessing
singles
	^ self events select: [ :event | event isSingle ]