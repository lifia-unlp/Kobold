rendering
modalHeader: html
	super modalHeader: html.
	self direction: html.
	html text: self badSmell averageTop printString