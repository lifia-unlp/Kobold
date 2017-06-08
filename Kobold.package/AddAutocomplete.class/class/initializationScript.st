code generation
initializationScript
	^ '
	var style=document.createElement(''link'');
   style.rel=''stylesheet'';
   style.href=''https://selfrefactoring.s3.amazonaws.com/resources/refactorings/awesomplete.css'';
   $("head").append(style);
	
	var script=document.createElement(''script'');
   script.type=''text/javascript'';
   script.src=''https://selfrefactoring.s3.amazonaws.com/resources/refactorings/awesomplete.min.js'';
   $("body").append(script);
	'