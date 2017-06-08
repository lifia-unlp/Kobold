rendering
renderContentOn: html
	self renderNavbar: html.
	html tbsContainer
		class: self containerClass;
		with: [ self renderMenu: html.
			html render: self view.
			self renderFooter: html ]