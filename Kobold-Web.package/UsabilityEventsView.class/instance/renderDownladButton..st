rendering
renderDownladButton: html

	(html anchor)
		callback: [self downloadFile];
		with: 
				[html tbsGlyphIcon iconCloudDownload.
				html space.
				html text: 'Download']