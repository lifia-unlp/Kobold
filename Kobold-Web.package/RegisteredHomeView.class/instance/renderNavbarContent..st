rendering
renderNavbarContent: html
	html tbsNavbarText
		tbsPullRight;
		with: [ html text: self user name.
			html space.
			html tbsNavbarLink
				callback: [ self logout ];
				with: 'logout' ]