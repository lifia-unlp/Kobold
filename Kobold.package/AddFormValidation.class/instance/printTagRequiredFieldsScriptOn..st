code generation
printTagRequiredFieldsScriptOn: aStream
	requiredInputs
		do: [ :requiredInputXpath | 
			aStream << ('requiredInput = $(xpathInstance.getElementByXpath("<1s>"));' expandMacrosWith: requiredInputXpath).
			aStream
				<<
					'
			requiredInput.addClass("requiredInput");
			requiredInput.after("(*)");
			requiredInput.css("width","90%");
			requiredInput.attr("originalBorderColor", requiredInput.css("border-color"));
			requiredInput.blur(function()\{ 
			  if ( !$(this).val() ) $(this).css("border-color","rgb(255, 0, 0)");
			  else $(this).css("border-color",$(this).attr("originalBorderColor"));
			} );' ]