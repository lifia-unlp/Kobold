rendering
renderTargetVersionsInput: html
	
	html div 
		class: 'form-group';
		with: [
			html strong: 'Target Versions'.	
		      (html textInput)
				on: #targetVersions of: self;
				id: self refactoring hash asString.				
		].
	self tagsScriptFor: self refactoring on: html.