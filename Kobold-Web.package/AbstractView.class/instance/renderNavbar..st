rendering
renderNavbar: html
	html tbsNavbar beDefault beStaticTop
		with: [ html
				tbsContainer: [ html tbsNavbarBrand: 'Kobold'.
					self renderNavbarContent: html ] ]