rendering
renderEditButton: html version: anAppVersion
	html anchor
		callback: [ self editVersion: anAppVersion ];
		with: [ html tbsGlyphIcon iconPencil.
			html
				space;
				text: 'Edit' ]