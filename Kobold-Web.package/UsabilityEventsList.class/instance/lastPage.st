pagination
lastPage
	^ (self client defaultVersion events size / self eventsPerPage) ceiling