actions
landingView

	self new
		ifTrue: 
			[self new: false.
			^TrackingCodeView new]
		ifFalse: [^BadSmellsUserReporter new]