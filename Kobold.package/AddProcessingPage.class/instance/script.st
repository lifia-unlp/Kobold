code generation
script
	^ String
		streamContents: [ :stream | 
			stream << super script.
			stream << self overlayScript.
			stream << self submissionInterceptionScript ]