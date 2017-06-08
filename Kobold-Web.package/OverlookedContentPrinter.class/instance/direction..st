rendering
direction: html
	self badSmell downwards
		ifTrue: [ html span class: 'glyphicon glyphicon-arrow-down' ]
		ifFalse: [ html span class: 'glyphicon glyphicon-arrow-up' ]