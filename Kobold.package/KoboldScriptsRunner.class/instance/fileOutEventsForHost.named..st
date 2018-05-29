util
fileOutEventsForHost: hostName named: clientName
	"File out events in chunks of 500, aproximately the size that the server allows importing"

	| events chunkSize |
	events := UsabilityEvent selectAll select: [ :event | event belongsToHost: hostName ].
	chunkSize := 500.
	0 to: events size by: chunkSize do: [ :i | 
		| from to |
		from := i + 1.
		to := i + chunkSize min: events size.
		FileStream
			forceNewFileNamed: clientName , '.events.' , from printString , '-' , to printString , '.fuel'
			do:
				[ :aStream | FLSerializer newDefault serialize: (events copyFrom: from to: to) on: aStream binary ] ]