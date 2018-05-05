api
uploadFileForSelector: selector ofLibrary: library
	| localFilename |
	localFilename := (FileSystem disk workingDirectory / library name
		/ (library asFilename: selector)) pathString.
	^ self awsClient
		uploadFile: localFilename
		inBucket: self bucketName
		withPrefix: self folderName , '/' , library name