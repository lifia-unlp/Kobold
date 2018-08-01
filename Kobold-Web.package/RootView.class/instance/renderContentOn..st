rendering
renderContentOn: html
	self session loggedIn "Revisa si hay un usaurio logeado"
		ifFalse: [ self view: (UnregisteredHomeView withRoot: self) ]. "Sin no hay nadie carga una vista UnregisteredHomeView al componente"
	html render: self view. "Renderiza la vista recien cargada"
	self view decreaseLogs