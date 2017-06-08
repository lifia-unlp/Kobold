initialization
initialize
	super initialize.
	self minimumEventsCount: 30.
	self groupingStrategy: ScoringMapEventsGroupingStrategy new