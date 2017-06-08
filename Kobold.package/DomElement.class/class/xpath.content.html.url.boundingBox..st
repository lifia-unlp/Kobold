instance creation
xpath: aString content: aContent html: aHTML url: aURL boundingBox: aRectangle
	^ self new
		xpath: aString;
		url: aURL;
		boundingBox: aRectangle;
		content: aContent;
		html: aHTML;
		yourself