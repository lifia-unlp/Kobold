rendering
renderContentOn: html
	
	html heading 
		level: 3;
		with: 'New Version'.
	html tbsRow: [ 
		html tbsColumn
			mediumSize: 6;
			with: [
				self renderLogs: html forClass: 'VersionErrors'. 
				self renderNewVersionForm: html  ].
	]