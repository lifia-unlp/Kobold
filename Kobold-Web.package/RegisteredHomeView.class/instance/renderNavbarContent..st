rendering
renderNavbarContent: html
	html tbsNavbarText "crea un menu margen derecho"
		tbsPullRight;
		with: [ html text: self user name. "muestra el nombre de usuario"
			html space.
			html tbsNavbarLink
				callback: [ self logout ]; "render boton de cerrar sesion"
				with: 'logout' ]