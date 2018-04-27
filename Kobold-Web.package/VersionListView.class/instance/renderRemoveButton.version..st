rendering
renderRemoveButton: html version: anAppVersion
	(html tbsModalSwitch:'remove-modal')  
		class: 'pull-right';
		"callback: [ self removeVersion: anAppVersion ];"
		onClick: (self modalLoaderScript: html for: anAppVersion);	
		with: [ html tbsGlyphIcon class: 'version-control'; iconRemove ].