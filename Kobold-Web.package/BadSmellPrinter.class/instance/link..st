accessing
link: html
	html div
		class: 'media';
		with: [ 
					html div
						class: 'media-left';
						with: [ self icon: html  ].
					html div
						class: 'media-body';
						with: [ 
									html heading
										level: 5;
										class: 'media-heading';
										with: [ 
													(html anchor)
														callback: [ self showBadSmellInfo ];
														with: [ self listName: html ].
													html space.
													self tooltip: html ].
									self listDetails: html.
									html
										paragraph: [ 
											self
												renderIgnoreButtonOn: html;
												renderResetButtonOn: html ] ] ]