rendering
renderBadSmellViewLink: html
	html anchor 
		callback: [ self showBadSmellInfo  ];
		with: [ self listName: html ].
	html space.
	self tooltip: html.