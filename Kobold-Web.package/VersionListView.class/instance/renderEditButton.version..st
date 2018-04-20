rendering
renderEditButton: html version: anAppVersion
	html anchor  						
		class: 'pull-right';
		callback: [ self editVersion: anAppVersion ];
		with: [html tbsGlyphIcon class: 'version-control'; iconPencil].