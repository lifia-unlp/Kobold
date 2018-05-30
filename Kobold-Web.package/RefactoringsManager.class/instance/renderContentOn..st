rendering
renderContentOn: html
	self renderBreadcrumbOn: html.
	html heading
		level: 3;
		with: self version versionName.
	self renderShowVersionLinkOn: html.
	self renderAppliedRefactorings: html.
	self renderUnsolvedUsabilitySmells: html.
	self usDetailsModal: html.
	self editRefactoringModal: html.