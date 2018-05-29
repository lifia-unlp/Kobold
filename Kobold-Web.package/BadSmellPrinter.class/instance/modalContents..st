rendering
modalContents: html
	self renderHeader: html.
	self renderDetails: html.
	self renderSuggestedRefactorings: html.
	