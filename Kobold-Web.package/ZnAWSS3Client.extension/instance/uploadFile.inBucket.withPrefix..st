*Kobold-Web
uploadFile: aFileName inBucket: bucketName withPrefix: prefixString
	| entry size mimeType fileStream entity |
	entry := aFileName asFileReference.
	size := entry size.
	mimeType := ZnMimeType forFilenameExtension: entry extension.
	fileStream := entry readStream.
"	mimeType isBinary
		ifTrue: [ fileStream binary ]."
	(entity := ZnStreamingEntity type: mimeType length: size) stream: fileStream.
	self
		at: bucketName -> (prefixString , '/' , entry basename)
		put: (ZnEntity with: entry rawContents type: mimeType).
	^ self httpClient response 