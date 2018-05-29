rendering
renderBadSmellInfo: html
	html text: 'On';
		space.
	(html tbsModalSwitch: 'us-detail')
		onClick: ((self smell printerFor: self version) modalLoaderScript: html);
		with: self smell name