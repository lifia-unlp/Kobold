rendering
renderHeader: html
	super renderHeader: html.
	self direction: html.
	html text: self badSmell averageTop printString