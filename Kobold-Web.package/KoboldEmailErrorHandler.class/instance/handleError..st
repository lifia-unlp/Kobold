actions
handleError: anException
	| subject email |
	subject := 'Kobold Error'.
	email := MailMessage
		from: 'kobold@lifia.info.unlp.edu.ar'
		to: {'jcgardey@lifia.info.unlp.edu.ar'}
		about: subject
		asFollows:
			(String streamContents: [ :stream | anException signalerContext errorReportOn: stream ]).
	email sendOn: 'lifia.info.unlp.edu.ar'