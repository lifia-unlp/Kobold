code generation
script
	^ ((String
		streamContents: [ :stream | 
			stream << '/********* {refactoringName} ***********/ <n>' expandMacros.
			self printScriptOn: stream ]) format: self macros) withCRs