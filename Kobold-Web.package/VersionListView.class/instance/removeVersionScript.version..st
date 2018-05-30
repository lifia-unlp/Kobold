removing
removeVersionScript: html version: aVersion
	^ html jQuery ajax script: [ :s |
		self removeVersion: aVersion.
		s << (html jQuery id: 'version-list') html: [ :r | self renderVersionListOn: r ].
	]