rendering
renderContentOn: html
	self renderGithubRibbonOn: html. "renderiza enlace a github"
	self renderNavbar: html. "renderiza barra de menu"
	html tbsContainer "crear un contenedor bootstrap de una fila con las 12 columnos 8+4"
		with: [ html
				tbsRow: [ html tbsColumn
						mediumSize: 8;
						with: [ self renderWelcome: html ]. "renderiza el mensaje de bienvenida"
					html tbsColumn
						mediumSize: 4;
						with: [ self renderLogin: html. "renderiza un componente de LoginView"
							self renderRegisterButton: html."renderiza el boton de registro"
							self renderLogs: html forClass: 'RegisterErrors'.
							self renderModalRegistry: html ] ] ].
	self renderFooterOn: html "renderiza el pie desde la clase padre"