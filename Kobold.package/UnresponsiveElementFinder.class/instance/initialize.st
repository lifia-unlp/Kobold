initialization
initialize
	super initialize.
	"self minimumEventsCount: 30."
	self minimumEventsCount: 3.
	self groupingStrategy: ScoringMapEventsGroupingStrategy new