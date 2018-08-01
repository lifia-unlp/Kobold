instance creation
xpath: aString content: aContent url: aURL boundingBox: aRectangle
	^ self new
		xpath: aString;
		url: aURL;
		boundingBox: aRectangle;
		content: aContent;
		html: aContent;
		yourself