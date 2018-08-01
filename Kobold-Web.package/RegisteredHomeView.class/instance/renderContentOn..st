rendering
renderContentOn: html
	self renderNavbar: html. "Render el encabezado de pagina"
	html tbsContainer "render un conteniner boostrap"
		class: self containerClass; "Clase CSS para ver todo el contenedor"
		class: #mainContainer;
		with: [ self renderMenu: html. "rende el menu"
			html render: self view ]. "render la vista con RootView"
	self renderFooterOn: html "render el pie"