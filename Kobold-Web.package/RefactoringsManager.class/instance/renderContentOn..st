rendering
renderContentOn: html
	html heading
		level: 3;
		with: self version versionName.
	self renderBreadcrumbOn: html.
	self renderShowVersionButtonOn: html.
	self renderAppliedRefactorings: html.
	self renderUnsolvedUsabilitySmells: html.
	self usDetailsModal: html.
	self editRefactoringModal: html.