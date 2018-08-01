controlling
downloadFile
	| filename |
	self client persistAllEvents.
	filename := self client filePath asFileReference.
	self requestContext
		respond: [ :response | 
			response
				contentType: WAMimeType applicationOctetStream;
				document: filename binaryReadStream contents;
				attachmentWithFileName: self client fileName ]