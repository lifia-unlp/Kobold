voyage
setupMongoDatabase
	| repository |
	repository := VOMongoRepository host: 'localhost' database: 'kobold'.
	repository enableSingleton