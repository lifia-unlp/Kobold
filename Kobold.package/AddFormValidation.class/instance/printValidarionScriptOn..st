code generation
printValidarionScriptOn: aStream
	aStream
		<<
			'
	$("document").ready(function()\{
	  {elementVarName}.submit(function(e)\{
	    var requiredInputs = $(".requiredInput");
	    for (var i = 0; i < requiredInputs.length; i++) \{
	      if ( !requiredInputs.get(i) || !$(requiredInputs.get(i)).val() ) \{
	        requiredInputs.css("border-color","rgb(255, 0, 0)");
	        e.preventDefault();
	        return false;
	      }
	    }
	  });
	});'