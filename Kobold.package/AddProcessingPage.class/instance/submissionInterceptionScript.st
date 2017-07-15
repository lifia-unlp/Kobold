code generation
submissionInterceptionScript
	^ String
		streamContents: [ :stream | 
			stream
				<< ('var interceptedForm = $(xpathInstance.getElementByXpath(<1s>));' expandMacrosWith: self formXPath printString).
			stream << 'interceptedForm.submit(function(e){'.
			stream << '	e.preventDefault();'.
			stream << '	$("#overlay").show();'.
			stream << '	return true'.
			stream << '});' ]