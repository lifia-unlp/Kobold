rendering
renderShowVersionButtonOn: html
	(self version url isNil or: [ self version url isEmpty ])
		ifTrue: [ ^ self ].
	html tbsRow
		id: 'show-version-row';
		with: [ html
				tbsColumn: [ html anchor
						class: 'btn';
						class: 'btn-primary';
						url: self version url;
						target: 'blank';
						with: 'Show Version' ]
				mediumSize: 6 ]