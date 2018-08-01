rendering
recommendedRefactorings: html

	html tbsPanel beDefault with: 
			[html tbsPanelHeading: 'Recommended Refactorings'.
			html tbsPanelBody: [self recommendedRefactoringsBody: html]]