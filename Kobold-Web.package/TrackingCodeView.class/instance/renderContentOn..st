rendering
renderContentOn: html

	(html tbsPanel)  "render panel bootstrap y datos de texto"
		class: 'tracking';
		with: 
				[html paragraph: 
						[html text: 'Copy and paste the following code in your webpage''s  '.
						html code: '<header>'.
						html text: '  section to start searching for Usability Smells'].
				self renderSnippetOn: html]