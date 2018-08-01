rendering
modalDialog: html
	html tbsModalDialog
		class: 'us-modal';
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
										id: 'us-detail-title';
										with: [ self modalTitle: html ] ].
							html tbsModalBody
								id: 'us-detail-body';
								with: [ self modalContents: html ].
							html
								tbsModalFooter: [ 
									html button
										class: 'btn btn-default';
										attributeAt: 'data-dismiss' put: 'modal';
										value: 'Close' ] ] ]