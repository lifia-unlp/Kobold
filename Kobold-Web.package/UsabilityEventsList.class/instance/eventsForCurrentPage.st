accessing
eventsForCurrentPage
	| startIndex endIndex |
	startIndex := self eventsPerPage * (self page - 1) + 1.
	endIndex := startIndex + self eventsPerPage - 1 min: self events size.
	^ self events copyFrom: startIndex to: endIndex