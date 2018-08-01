rendering
renderUploadEventsOn: html
	html form
		multipart;
		with: [ 
					html fileUpload callback: [ :value | self receiveFile: value ].
					html submitButton: 'Import Events File' ]