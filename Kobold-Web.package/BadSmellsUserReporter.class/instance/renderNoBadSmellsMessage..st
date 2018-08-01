rendering
renderNoBadSmellsMessage: html

	(html heading)
		level: 4;
		with: 'No Usability Smells detected at this time'.
	html paragraph: [self renderReloadButton: html].