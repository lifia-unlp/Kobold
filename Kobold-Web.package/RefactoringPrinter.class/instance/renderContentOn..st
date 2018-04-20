rendering
renderContentOn: html
	html script: self initializeTagLibrary.
	html
		div: [ self renderDescriptionOn: html.
			(self smell alreadyApplied: self refactoring)
				ifTrue: [  
					self
						renderTargetVersions: html;
						renderRemoveButtonOn: html;
						renderCodeButtonOn: html ]
				ifFalse: [ self renderApplyButtonOn: html ] ]