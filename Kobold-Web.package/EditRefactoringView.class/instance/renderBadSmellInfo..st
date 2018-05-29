rendering
renderBadSmellInfo: html
	
	html tbsFormGroup: [ 
		html text: 'Applied to '.

		(html tbsModalSwitch: 'us-detail')
			onClick: ((self smell printerFor: self version) modalLoaderScript: html);
			with: ( self smell name ).
		 ].