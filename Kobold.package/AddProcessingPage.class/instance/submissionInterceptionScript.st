code generation
submissionInterceptionScript
	^ String
		streamContents: [ :stream | 
			stream
				<< ('var interceptedForm = $(xpathInstance.getElementByXpath(<1s>));' expandMacrosWith: self formXPath printString).
			stream << 'submit = $(interceptedForm.find(":submit"));'.
			stream << 'submitCSS = submit.getStyleObject();'.
			stream << 'button = submit.clone().attr("type","button");'.
			stream << 'button.css(submitCSS);'.
			stream << 'button.click(function(){$("#overlay").show();setTimeout(function(){interceptedForm.submit()},1);});'.
			stream << 'submit.hide().after(button);' ]