voyage
setupDatabaseFromEnv

	| dbhost db dbuser dbpassword |
	dbhost := OSEnvironment current at: 'DB_HOST' ifAbsent: 'mongo'.
	db := OSEnvironment current at: 'DB' ifAbsent: 'kobold'.
	dbuser := OSEnvironment current at: 'DB_USER' ifAbsent: 'koboldusr'.
	dbpassword := OSEnvironment current at: 'DB_PASSWORD' ifAbsent: 'koboldpwd'.
	(VOMongoRepository
		 host: dbhost
		 database: db
		 username: dbuser
		 password: dbpassword) enableSingleton