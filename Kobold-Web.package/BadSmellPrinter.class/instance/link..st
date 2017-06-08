rendering
link: html
	html div
		class: 'media';
		with: [ 
					html div
						class: 'media-left';
						with: [ 
									(html tbsModalSwitch: 'us-detail')
										onClick: (self modalLoaderScript: html);
										with: [ self icon: html ] ].
					html div
						class: 'media-body';
						with: [ 
									html heading
										level: 5;
										class: 'media-heading';
										with: [ 
													(html tbsModalSwitch: 'us-detail')
														onClick: (self modalLoaderScript: html);
														with: [ self listName: html ].
													html space.
													self tooltip: html ].
									self listDetails: html.
									html
										paragraph: [ 
											self
												renderIgnoreButtonOn: html;
												renderResetButtonOn: html ] ] ]