initialization
initialize
	| accessKey secretAccessKey |
	super initialize.
	accessKey := OSEnvironment current at: 'AWS_ACCESS'.
	secretAccessKey := OSEnvironment current at: 'AWS_SECRET'.
	awsClient := ZnAWSS3Client new
		             accessKeyId: accessKey;
		             secretAccessKey: secretAccessKey;
		             checkIntegrity: true