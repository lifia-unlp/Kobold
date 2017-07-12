code generation
script
	^ String
		streamContents: [ :stream | 
			stream << super script.
			stream << 'var input = $(xpathInstance.getElementByXpath('.
			stream << self elementXpath.
			stream << '));'.
			stream << 'if(typeof(input[0]) != "undefined") input.dateDropdowns();' ]