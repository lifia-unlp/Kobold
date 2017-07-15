accessing
script
	| macros |
	macros := Dictionary new
		at: #element put: self elementVarName;
		at: #url put: self url asString;
		yourself.
	^ (String
		streamContents: [ :stream | 
			stream
				nextPutAll: super script;
				nextPutAll: 'if(typeof({element}[0]) != "undefined")';
				nextPutAll: '{element}.replaceWith($("<a href=''{url}''>"+{element}[0].outerHTML+"</a>"));';
				cr ]) format: macros