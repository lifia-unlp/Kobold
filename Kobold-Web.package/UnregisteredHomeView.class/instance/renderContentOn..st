rendering
renderContentOn: html
	self renderNavbar: html.
	html tbsContainer
		with: [ html
				tbsRow: [ html tbsColumn
						mediumSize: 8;
						with: [ self renderWelcome: html ].
					html tbsColumn
						mediumSize: 4;
						with: [ self renderLogin: html.
							self renderRegisterButton: html.
							self renderLogs: html forClass: 'RegisterErrors'.
							self renderModalRegistry: html ] ] ].
	self renderFooter: html