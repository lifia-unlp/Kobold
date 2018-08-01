rendering
renderContentOn: html
	html heading
		level: 3;
		with: 'Configuration'.
	html
		tbsRow: [ 
			html tbsColumn
				mediumSize: 4;
				with: [ self renderConfigurationForm: html ] ]