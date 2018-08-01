uploaded metadata
mainCss

	^WAFileLibraryResource
		filepath: 'main.css'
		mimeType: (WAMimeType main: 'text' sub: 'css')
		cacheDuration: 30 minutes
		contents: (GRDelayedSend receiver: self selector: #mainCssContent)