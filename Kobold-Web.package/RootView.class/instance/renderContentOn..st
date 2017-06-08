rendering
renderContentOn: html
	self session loggedIn
		ifFalse: [ self view: (UnregisteredHomeView withRoot: self) ].
	html render: self view.
	self view decreaseLogs