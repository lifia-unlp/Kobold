rendering
renderParameterFieldsOn: html
	html strong: 'URI'.
	html textInput 
		tbsFormControl;
		on: #urlString of: self refactoring;
		readonly: (self editable not)