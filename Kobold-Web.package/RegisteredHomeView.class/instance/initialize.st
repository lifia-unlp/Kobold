initialization
initialize

	super initialize.
	views := OrderedCollection new.
	self view: self user landingView.
	views add: BadSmellsUserReporter new.
	views add: RefactoringsManager new.
	views add: UsabilityEventsView new.
	views add: TrackingCodeView new.
	views add: ConfigurationView new.
	views add: AboutView new