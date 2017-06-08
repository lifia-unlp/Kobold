actions
redirectLoggedUser
	self user client recalculateBadSmells.
	self navigateTo: (RegisteredHomeView withRoot: self rootView)