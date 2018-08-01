rendering
renderReloadButton: html
	html anchor
		class: #reporterAction;
		callback: [ self recalculateBadSmells ];
		with: [ 
					html tbsGlyphIcon iconRefresh.
					html space.
					html text: 'Recalculate' ]