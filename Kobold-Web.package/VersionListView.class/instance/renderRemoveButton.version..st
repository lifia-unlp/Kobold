rendering
renderRemoveButton: html version: anAppVersion
	html anchor  
		class: 'pull-right';
		callback: [ self removeVersion: anAppVersion ];
		with: [ html tbsGlyphIcon class: 'version-control'; iconRemove ].