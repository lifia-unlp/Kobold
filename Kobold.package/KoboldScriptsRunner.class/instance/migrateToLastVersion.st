migrations
migrateToLastVersion
	"Always redefine this method to point to the last version"

	ApplicationManager instance users
		do: [ :u | 
			u client defaultVersion
				badSmells: u client badSmells;
				finders: u client finders;
				events: u client events.
			u client
				badSmells: nil;
				finders: nil;
				events: nil].
	ApplicationManager instance users do: [ :u | u client save ].	