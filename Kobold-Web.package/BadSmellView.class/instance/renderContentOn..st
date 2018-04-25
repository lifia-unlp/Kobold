rendering
renderContentOn: html
	html heading
		level: 3;
		with: (self smell name).
	
	self renderBreadcrumbOn: html.
	self smell printer renderHeader: html.
	self smell printer renderDetails: html.
	
	html tbsRow: [ 
		html tbsColumn
			id: 'recommended-refactorings';
			mediumSize: 5;
			with: [ self renderRecommendedRefactorings: html ].
		html tbsColumn 
			id: 'applied-refactorings';
			mediumSize: 4;
			mediumOffset: 3;
			with: [ self renderAppliedRefactorings: html ].
	].
	
	