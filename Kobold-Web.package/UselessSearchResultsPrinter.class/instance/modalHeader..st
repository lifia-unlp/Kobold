rendering
modalHeader: html
	self url: html.
	html
		paragraph: [ html text: ' This search form bring results but those aren''t followed '.
			html strong: self badSmell noResultsFollowedPercentaje printString , '% of the times '.
			html text: ' ('.
			html strong: self badSmell timesResultsNotFollowed printString.
			html text: ' out of '.
			html strong: self badSmell timesSuccessfulSearches printString.
			html text: ' succesful searches ).' ]