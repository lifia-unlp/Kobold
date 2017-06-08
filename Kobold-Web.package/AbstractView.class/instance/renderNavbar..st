rendering
renderNavbar: html
	html tbsNavbar beDefault beStaticTop
		with: [ html
				tbsContainer: [ html tbsNavbarBrand: 'Usability Smells Finder'.
					self renderNavbarContent: html ] ]