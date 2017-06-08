rendering
renderContentOn: html

	self client isNil
		ifTrue: 
			[(html heading)
				level: 4;
				with: 'No client configured']
		ifFalse: 
			[self badSmellsList: html]