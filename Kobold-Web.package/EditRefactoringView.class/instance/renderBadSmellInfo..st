rendering
renderBadSmellInfo: html
	
	html tbsFormGroup: [ 
		(html tbsModalSwitch: 'us-detail')
			onClick: (self smell printer modalLoaderScript: html);
			with: ( self smell name ).
		 ].