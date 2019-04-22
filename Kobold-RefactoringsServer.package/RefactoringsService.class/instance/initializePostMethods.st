endpoint-post
initializePostMethods
	teapot
		POST:
			'api/smells/<smellId>/refactorings'
				-> [ :req | 
					| body |
					req contents
						ifNil: [ body := {} ]
						ifNotNil: [ :contents | body := NeoJSONReader fromString: contents ].
					self refactoringsFor: (req at: #smellId) with: body ];
		POST:
			'api/refactorings/<refactoringId>'
				-> [ :req | 
					| body |
					req contents
						ifNil: [ body := {} ]
						ifNotNil: [ :contents | body := NeoJSONReader fromString: contents ].
					self refactoringCode: (req at: #refactoringId) with: body ]