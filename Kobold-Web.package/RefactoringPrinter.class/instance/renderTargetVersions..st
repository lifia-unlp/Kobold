rendering
renderTargetVersions: html
	
	html script: self initializeTagLibrary.
	
	html div 
		class: 'form-group';
		with: [
			html strong: 'Target Versions'.	
		      (html textInput)
				on: #targetVersions of: self;
				class: 'target-versions'.				
		].