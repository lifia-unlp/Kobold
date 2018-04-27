rendering
renderParameterFieldsOn: html
	html strong: 'Tooltip text'.	
	(html textInput on: #text of: self refactoring) 
		tbsFormControl;
		placeholder: 'Tooltip text';
		readonly:(self editable not).