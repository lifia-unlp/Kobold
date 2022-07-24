voyage
setupDatabaseFromEnv

	| dbhost db dbuser dbpassword |
	dbhost := OSEnvironment current at: 'DB_HOST'.
	db := OSEnvironment current at: 'DB'.
	dbuser := OSEnvironment current at: 'DB_USER'.
	dbpassword := OSEnvironment current at: 'DB_PASSWORD'.
	(VOMongoRepository
		 host: dbhost
		 database: db
		 username: dbuser
		 password: dbpassword) enableSingleton