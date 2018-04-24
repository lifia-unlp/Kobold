printing
renderHeader: html
	html
		paragraph: [ 
			html text: ' Users followed this path '.
			html strong: self badSmell eventsCount printString , ' times.' ].
	^ self