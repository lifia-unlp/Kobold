rendering
renderShowVersionLinkOn: html
	(self version url isNil or: [ self version url isEmpty ])
		ifTrue: [ ^ self ].
	html tbsRow
		id: 'show-version-row';
		with: [ html
				tbsColumn: [ html anchor
						url: self version url;
						target: 'blank';
						with: [ html
								text: self version url;
								space.
							html tbsGlyphIcon iconNewWindow ] ]
				mediumSize: 6 ]