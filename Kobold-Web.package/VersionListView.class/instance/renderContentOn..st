rendering
renderContentOn: html
	
	html heading 
		level: 3;
		with: 'Versions'.
	
	html tbsRow: [ 
		html tbsColumn
			mediumSize: 6;
			with:  [
				html anchor
			           callback: [self call: NewVersionFormView new ];
			           with: [
						html tbsGlyphIcon iconPlus.
						html space.
						html text: 'New Version'].
		 	]  
	]. 

	html tbsRow
		id: 'version-list';
		with: [ self renderVersionList: html ].
	
	html tbsModal
		id: 'remove-modal';
		with: [  html div id: #modalInner  ].
	
	
	