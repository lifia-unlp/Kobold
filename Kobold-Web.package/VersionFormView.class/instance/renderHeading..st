rendering
renderHeading: html
	| formTitle |
	
	formTitle := (self action = #new) ifTrue: [ 'New Version' ] ifFalse: [ 'Edit Version'  ]. 
	
	html heading 
		level: 3;
		with: formTitle.