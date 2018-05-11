rendering
renderNewVersionForm: html
	html
		tbsForm: [ html
				tbsFormGroup: [ html text: 'Version Name'.
					html textInput tbsFormControl
						value: self version versionName;
						callback: [ :value | self version versionName: value ] ].
			html
				tbsFormGroup: [ html
						tbsRow: [ html tbsColumn
								mediumSize: 4;
								with: [ html text: 'Tag'.
									html textInput tbsFormControl
										id: 'version-tag';
										value: self version tag;
										callback: [ :value | self version tag: value ];
										onBlur: self updateUrlScript ].
							html tbsColumn
								mediumSize: 8;
								with: [ html text: 'URL'.
									html strong
										id: 'version-url';
										with: self version url  ] ] ].
			html
				tbsFormGroup: [ html text: 'Description'.
					html textArea tbsFormControl
						value: self version description;
						callback: [ :value | self version description: value ] ].
			html
				tbsFormGroup: [ html tbsColumn: [ self renderCancelButton: html ] mediumSize: 2.
					html tbsColumn: [ self renderSubmitButton: html ] mediumSize: 2 ] ]