rendering
renderContentOn: html
	html
		div: [ self renderDescriptionOn: html.
			(self smell alreadyApplied: self refactoring)
				ifTrue: [ self
						renderRemoveButtonOn: html;
						renderCodeButtonOn: html ]
				ifFalse: [ self renderApplyButtonOn: html ] ]