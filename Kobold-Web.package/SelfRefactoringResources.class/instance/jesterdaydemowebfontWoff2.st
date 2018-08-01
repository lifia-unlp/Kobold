uploaded metadata
jesterdaydemowebfontWoff2
	^ WAFileLibraryResource
		filepath: 'jesterdaydemo-webfont.woff2'
		mimeType: (WAMimeType main: 'application' sub: 'octet-stream')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jesterdaydemowebfontWoff2Content)