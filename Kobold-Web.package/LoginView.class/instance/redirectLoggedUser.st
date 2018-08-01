actions
redirectLoggedUser

	self user client recalculateBadSmells. "usuario es el usuario recuperado, y el cliente es la aplicacion aqui ya cargo un objeto clase client a traves del appManager"
	
	self navigateTo: (RegisteredHomeView withRoot: self rootView) "cambia la vista de componente a RegistereHomeView"