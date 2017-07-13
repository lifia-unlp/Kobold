code generation
script
	^ String
		streamContents: [ :stream | 
			stream << super script.
			stream << ('var <1s> = $(xpathInstance.getElementByXpath(' expandMacrosWith: self elementVarName).
			stream << self elementXpath.
			stream << '));' ]