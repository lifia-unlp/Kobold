rendering
modalDialog: html for: aVersion
	html tbsModalDialog
		class: 'remove-modal';
		with: [ 
					html
						tbsModalContent: [ 
							html
								tbsModalHeader: [ 
									html button
										class: 'close';
										attributeAt: 'data-dismiss' put: 'modal';
										attributeAt: 'aria-hidden' put: 'true';
										value: 'x'.
									html heading
										level: 4;
										class: 'modal-title';
										id: 'remove-modal-title';
										with: 'Remove Version' ].
							html tbsModalBody
								id: 'remove-modal-body';
								with: [ html paragraph: 'This action will remove all refactorings' ].
							html
								tbsModalFooter: [ 
									html button
										class: 'btn btn-default';
										attributeAt: 'data-dismiss' put: 'modal';
										value: 'Cancel'. 
									html button
										class: 'btn btn-success';
										attributeAt: 'data-dismiss' put: 'modal';
										value: 'Confirm';
										onClick: (self removeVersionScript: html version: aVersion).
										
									] ] ]