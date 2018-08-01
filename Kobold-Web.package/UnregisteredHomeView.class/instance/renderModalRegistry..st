rendering
renderModalRegistry: html

	(html tbsModal)
		attributeAt: 'id' put: 'registerModal'; "para enlazar con el boton de registro creado en renderRegisterButton"
		class: 'fade'; "crea una ventana modal para el formulario de registro del componente RegisterView"
		with: 
				[html tbsModalDialog: 
						[html tbsModalContent: 
								[html tbsModalHeader: 
										[html tbsModalCloseIcon.
										(html heading)
											class: 'modal-title';
											level: 4;
											with: 'Register'].
								html tbsModalBody: [html render: (RegisterView withRoot: self rootView)]]]] "renderiza una vista RegisterView y le pasa el componente de aplicacion rootView Aplicacion"