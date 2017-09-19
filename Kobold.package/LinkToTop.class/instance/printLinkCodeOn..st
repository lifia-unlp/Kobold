code generation
printLinkCodeOn: aStream
	aStream
		<<
			'$("body").append(''<a id="scroller" style="display:block;position:fixed;bottom:30px;right:30px;width:35px;height:35px;cursor:pointer;background: url(https://selfrefactoring.s3.amazonaws.com/resources/refactorings/totop.png) no-repeat;display:none"></a>'');'