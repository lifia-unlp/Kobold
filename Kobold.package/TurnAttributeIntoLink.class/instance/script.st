accessing
script
	^ String
		streamContents: [ :stream | 
			stream
				nextPutAll: super script;
				cr;
				nextPutAll: 'element = $(xpathInstance.getElementByXpath(';
				nextPutAll: self locator;
				nextPutAll: '));';
				cr;
				nextPutAll: 'if(typeof(element[0]) != "undefined") ';
				cr;
				tab;
				nextPutAll: 'element.replaceWith( $("<a href=';
				nextPutAll: self url asString;
				nextPutAll: '>"+element[0].outerHTML+"</a>"));';
				cr ]