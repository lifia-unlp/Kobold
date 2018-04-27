rendering
renderParameterFieldsOn: html
	html strong: 'Name or HTML code'.
	html textInput 
		tbsFormControl;
		on: #newName of: self refactoring; 
		placeholder: 'Name or HTML code';
		readonly: (self editable not).