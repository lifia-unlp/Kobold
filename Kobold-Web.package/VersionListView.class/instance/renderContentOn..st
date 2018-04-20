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
			           callback: [self call: VersionFormView new ];
			           with: [
						html tbsGlyphIcon iconPlus.
						html space.
						html text: 'New Version'].
		 	]  
	]. 
		
	html tbsRow
		class: 'version-list';
		with: [ 
		html tbsColumn
			mediumSize: 6;
			with: [ 
				self user client versions do: [ :version | self renderVersion: version on: html ]
			].
		 ]
	