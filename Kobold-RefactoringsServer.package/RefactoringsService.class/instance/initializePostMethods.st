endpoint-post
initializePostMethods
	teapot
		POST:
			'/smells/<smellId>/refactorings'
				-> [ :req | 
					| body |
					body := NeoJSONReader fromString: req contents.
					self refactoringsFor: (req at: #smellId) with: body ];
		POST:
			'/refactorings/<refactoringId>'
				-> [ :req | 
					| body |
					body := NeoJSONReader fromString: req contents.
					self refactoringCode: (req at: #refactoringId) with: body ]