request handling
respondInvalidTokenError "si el token de los manejadores de eventos EventsParse son son validos devovio un iInvalidToken entonces ejecuta este metodo denotaaar el error"
	self requestContext
		respond: [ :response | 
			response
				headerAt: 'Access-Control-Allow-Origin' put: '*';
				headerAt: 'Access-Control-Allow-Credentials' put: 'true';
				status: WAResponse statusUnauthorized ]