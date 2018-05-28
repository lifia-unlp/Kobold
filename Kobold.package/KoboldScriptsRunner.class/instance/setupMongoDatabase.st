voyage
setupMongoDatabase
	| repository |
	repository := VOMongoRepository host: 'localhost' database: 'kobold_production'.
	repository enableSingleton