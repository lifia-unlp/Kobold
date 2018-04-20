rendering
renderNewVersionForm: html
	html tbsForm: [ 
		html tbsFormGroup: [ 
			html text: 'Version Name'.
			html textInput tbsFormControl
				value:  self version versionName;
				callback: [ :value | self version versionName: value].
		].
		html tbsFormGroup: [ 
			html tbsColumn 
				mediumSize: 6;
				with: [  
					html text: 'Tag'.
					html textInput tbsFormControl
						id: 'version-tag';
						value: self version tag;
						callback: [ :value | self version tag: value ];
						onBlur: (self updateUrlScript)
				].
			html tbsColumn
				mediumSize: 6;
				with: [ 
					html text: 'URL'.
					html textInput tbsFormControl
						id: 'version-url';
						value: self version url;
						readonly: true. 	 
				].
		].
		html tbsFormGroup: [ 
			html text: 'Description'.
			html textArea tbsFormControl 
				value: self version description;
				callback: [ :value | self version description: value ].
		].
		html tbsFormGroup: [ 
			html tbsButton 
				value: 'Save';
				bePrimary;
				callback: [ (self saveVersion) ifTrue: [ self answer: true ]]
		].	
			
	]