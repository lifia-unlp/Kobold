seaside
setDeploymentResourceBaseUrl
	WAFileHandler default
		preferenceAt: #resourceBaseUrl
		put: (WAUrl absolute: 'https://kobold.s3.amazonaws.com/resources/')