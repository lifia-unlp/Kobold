deployment
prepareForDeployment
	self
		removeDevelopmentToolbar;
		turnOffDebugging;
		unregisterDevelopmentApplications;
		setupServer;
		setupMongoDatabase