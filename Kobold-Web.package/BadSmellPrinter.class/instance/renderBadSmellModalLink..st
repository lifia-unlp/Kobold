rendering
renderBadSmellModalLink:html
	(html tbsModalSwitch: 'us-detail')
			onClick: (self modalLoaderScript: html);
			with: ( self listName: html ).