rendering
renderWelcome: html
	html
		tbsJumbotron: [ html
				heading: [ html text: 'Kobold'.
					html image url: SelfRefactoringResources / #koboldLogoPng ].
			html paragraph: 'Find usability issues on your Web App automatically.' ]