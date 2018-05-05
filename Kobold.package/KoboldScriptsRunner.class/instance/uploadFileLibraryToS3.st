seaside
uploadFileLibraryToS3
	| uploader |
	uploader := S3FileLibraryUploader bucketName: 'kobold' folderName: 'resources'.
	uploader uploadLibrary: SelfRefactoringResources