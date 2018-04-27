rendering
renderParameterFieldsOn: html
	html strong: 'Values'.
	html textArea
		tbsFormControl;
		on: #valuesString of: self refactoring;
		readonly: (self editable not)