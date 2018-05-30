rendering
renderRemoveButton: html version: anAppVersion
	(html tbsModalSwitch: 'remove-modal')
		onClick: (self modalLoaderScript: html for: anAppVersion);
		with: [ html tbsGlyphIcon iconRemove.
			html
				space;
				text: 'Delete' ]