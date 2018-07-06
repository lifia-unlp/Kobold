migrations
migrateToVersion04
	ApplicationManager instance users
		do: [ :u | 
			u client versions
				do: [ :v | 
					v
						badSmells: OrderedCollection new;
						events: OrderedCollection new;
						finders: OrderedCollection new.
					v = u client defaultVersion
						ifTrue: [ v badSmells addAll: u client badSmells.
							v finders addAll: u client finders.
							v events addAll: u client events ]
						ifFalse: [ v finders: v allFinders ] ].
			u client
				badSmells: nil;
				finders: nil;
				events: nil;
				save: false ]