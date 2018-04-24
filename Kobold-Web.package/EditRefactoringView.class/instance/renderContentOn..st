rendering
renderContentOn: html
	html tbsPanel beDefault with: 
			[html tbsPanelHeading: [self refactoringTitle: html ].
			html tbsPanelBody: [
				self renderBadSmellInfo: html.
				self refactoringBody: html.
				]
			]
