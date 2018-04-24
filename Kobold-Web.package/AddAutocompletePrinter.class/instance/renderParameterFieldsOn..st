rendering
renderParameterFieldsOn: html
	html textArea
		tbsFormControl;
		on: #valuesString of: self refactoring;
		readonly: (self editable not)