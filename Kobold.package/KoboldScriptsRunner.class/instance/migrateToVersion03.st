migrations
migrateToVersion03

| production |

production:= AppVersion name: 'production' tag: 'prod'  description: '' canBeEdited: false.

ApplicationManager instance users do: [ :user | 
	user client versions: (OrderedCollection with: (production clone) ). 
	user client badSmells do: [ :smell | smell refactorings do: [ :ref | user client addRefactoring: ref to: smell ] ].
	
	user client save].