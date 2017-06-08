deployment
setupMongoDatabase
	| repository |
	repository := VOMongoRepository host: 'localhost' database: 'selfrefactoring'.
	repository enableSingleton