migrations
migrateToVersion01
	NoProcessingPage selectAll
		do: [ :smell | 
			smell basicEventsCount: smell events size.
			smell
				averageTime: ((smell events sumNumbers: [ :event | event time ]) / (smell eventsCount max: 1)) asFloat.
			smell save ]