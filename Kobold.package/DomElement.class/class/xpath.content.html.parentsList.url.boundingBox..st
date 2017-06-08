instance creation
xpath: aString content: aContent html: aHTML parentsList: parents url: aURL boundingBox: aRectangle
	^ self new
		xpath: aString;
		url: aURL;
		boundingBox: aRectangle;
		content: aContent;
		html: aHTML;
		parentsList: parents;
		yourself