rendering
renderVersionList: html
	html tbsColumn
			mediumSize: 6;
			with: [ 
				self user client versions do: [ :version | self renderVersion: version on: html ]
			].