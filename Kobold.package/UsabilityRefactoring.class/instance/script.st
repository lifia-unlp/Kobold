code generation
script

	^ ((String
		streamContents: [ :stream | 
			stream << '/********* {refactoringName} ***********/ \'.
			self printScriptOn: stream ]) format: self macros) withCRs