rendering
renderModalRegistry: html

	(html tbsModal)
		attributeAt: 'id' put: 'registerModal';
		class: 'fade';
		with: 
				[html tbsModalDialog: 
						[html tbsModalContent: 
								[html tbsModalHeader: 
										[html tbsModalCloseIcon.
										(html heading)
											class: 'modal-title';
											level: 4;
											with: 'Register'].
								html tbsModalBody: [html render: (RegisterView withRoot: self rootView)]]]]