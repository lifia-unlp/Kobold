rendering
renderBreadcrumbOn: html
	html
		tbsBreadcrumb: [ html
				tbsBreadcrumbSection: [ html anchor
						callback: [ self call: (BadSmellsUserReporter new) ];
						with: 'Usability Smells' ].
			html tbsBreadcrumbSection
				beActive;
				with: self smell name ]