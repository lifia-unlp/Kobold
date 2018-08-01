request handling
respond: aString
	self requestContext
		respond: [ :response | 
			response
				headerAt: 'Access-Control-Allow-Origin' put: '*';
				headerAt: 'Access-Control-Allow-Credentials' put: 'true';
				status: WAResponse statusOk;
				contentType: WAMimeType textPlain;
				nextPutAll: aString ]