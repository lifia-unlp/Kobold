rendering
renderContentOn: html
	self client
		ifNil: [ html heading
				level: 4;
				with: 'No client configured' ]
		ifNotNil: [ self badSmellsList: html ]