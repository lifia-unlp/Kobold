rendering
renderBreadcrumbOn: html
	html
		tbsBreadcrumb: [ html
				tbsBreadcrumbSection: [ html anchor
						callback: [ self answer ];
						with: 'All Refactorings' ].
			html tbsBreadcrumbSection
				beActive;
				with: self refactoring name ]