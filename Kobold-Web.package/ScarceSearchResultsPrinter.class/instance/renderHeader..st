rendering
renderHeader: html

	self url: html.
	html paragraph: [
		html text: ' This search form didn''t bring results '.
		html strong: self badSmell noResultsPercentage printString, '% of the times '.
		html text: ' ('.
		html strong: self badSmell timesSearched printString.
		html text: ' out of '.
		html strong: self badSmell unsuccessfulSearches size printString.
		html text: ' search attempts).'.
	]