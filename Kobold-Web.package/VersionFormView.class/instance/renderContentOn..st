rendering
renderContentOn: html
	
	self renderHeading: html.
	self renderBreadcrumbOn: html.
	html tbsRow: [ 
		html tbsColumn
			mediumSize: 6;
			with: [
				self renderLogs: html forClass: 'VersionErrors'. 
				self renderNewVersionForm: html  ].
	]