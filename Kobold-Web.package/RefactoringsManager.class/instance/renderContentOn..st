rendering
renderContentOn: html
	html heading
		level: 3;
		with: 'Active Usability Refactorings'.
	self renderBreadcrumbOn: html.
	self renderShowVersionButtonOn: html.
	self renderAppliedRefactorings: html.
	self renderUnsolvedUsabilitySmells: html.
	self usDetailsModal: html