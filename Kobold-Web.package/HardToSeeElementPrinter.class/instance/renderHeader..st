rendering
renderHeader: html

	super url: html.
	self badSmell hasText ifFalse:
	[
		html paragraph: 
		[
			html text: 'Element '.
			html code: self badSmell domElement printString.
			html text: ' was zoomed '.
			html strong: self badSmell timesZoomed printString, ' times'.
			html text: ' an average of '. 
			html strong: self badSmell averageZoomAmount.
			html text: '%'.
		]
	]
	ifTrue:
	[
		html paragraph: 
		[
			html text: 'Element '.
			html code: self badSmell domElement printString.
			html text: '(having a text size of '.
			html text: self badSmell minimumTextSize printString, 'px)'.
			html text: ' was zoomed '.
			html strong: self badSmell timesZoomed printString, ' times'.
			html text: ' an average of '. 
			html strong: self badSmell averageZoomAmount.
			html text: '%'.
		]
	]