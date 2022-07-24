initialization
initializeFromFile
	| credentials |
	super initialize.
	credentials := self credentialsPath asFileReference contents substrings: ','.
	awsClient := ZnAWSS3Client new
		accessKeyId: credentials first trimmed;
		secretAccessKey: credentials second trimmed;
		checkIntegrity: true