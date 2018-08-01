request handling
respondOk
	self requestContext

		respond: [ :response | 
			response
				headerAt: 'Access-Control-Allow-Origind' put: '*';
				headerAt: 'Access-Control-Allow-Credentials' put: 'true';
				status: WAResponse statusOk ]