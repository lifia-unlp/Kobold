rendering
averageTime: html
	html
		paragraph: [ 
			html text: 'Average processing time is '.
			html strong: self badSmell averageTime printString , ' ms' ].
	^ self