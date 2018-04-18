as yet unclassified
restartApp
	"drop the database and reset app manager"
	
	VORepository current dropDatabase.
	self setupMongoDatabase.
	ApplicationManager resetInstance.