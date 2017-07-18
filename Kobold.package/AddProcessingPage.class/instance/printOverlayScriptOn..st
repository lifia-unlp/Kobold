code generation
printOverlayScriptOn: aStream
	aStream
		<<
			'$("head").append("<style>#overlay \{font-size:2em;position:fixed;top:0;left:0;width:100%;height:100%;background-color:#000;filter:alpha(opacity=50);-moz-opacity:0.5;-khtml-opacity:0.5;opacity:0.5;z-index:9998;padding:100px 50%;}</style>");'.
	aStream << '$("body").append("<div id=''overlay''>Loading...</div>");'.
	aStream << '$("#overlay").hide();'