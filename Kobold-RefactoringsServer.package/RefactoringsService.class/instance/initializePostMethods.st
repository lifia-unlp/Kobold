endpoint-post
initializePostMethods
	teapot
		POST:
			'/smells/<smellId>/refactorings'
				-> [ :req | 
					| body |
					req contents
						ifNil: [ body := {} ]
						ifNotNil: [ :contents | body := NeoJSONReader fromString: contents ].
					self refactoringsFor: (req at: #smellId) with: body ];
		POST:
			'/refactorings/<refactoringId>'
				-> [ :req | 
					| body |
					req contents
						ifNil: [ body := {} ]
						ifNotNil: [ :contents | body := NeoJSONReader fromString: contents ].
					self refactoringCode: (req at: #refactoringId) with: body ]