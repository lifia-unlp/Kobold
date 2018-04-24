rendering
renderParameterFieldsOn: html
	html textInput 
		tbsFormControl;
		on: #newName of: self refactoring; 
		placeholder: 'Name or HTML code';
		readonly: (self editable not).