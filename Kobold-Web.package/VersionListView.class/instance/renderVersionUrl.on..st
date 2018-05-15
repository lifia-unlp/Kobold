rendering
renderVersionUrl: aVersion on: html
	(aVersion url isNil or: [ aVersion url isEmpty ])
		ifTrue: [ ^ self ].
	html anchor
		url: (aVersion url);
		target: 'blank';
		with: [ html tbsGlyphIcon
				class: 'version-control';
				iconArrowRight ]