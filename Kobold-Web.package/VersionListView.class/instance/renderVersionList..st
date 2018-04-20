rendering
renderVersionList: html
	
	html div
		class: 'list-group';
		with: [ 
			self client versions do: [ :version | self renderVersion: version on: html ]
			 ]