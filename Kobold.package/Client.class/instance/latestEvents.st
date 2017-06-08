accessing
latestEvents
	^ self events last: (self events size min: 50)