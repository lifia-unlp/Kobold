rendering
renderFooterOn: html
	html div
		id: 'footer';
		with: [ html
				tbsContainer: [ html paragraph
						class: 'muted credit';
						with: [ html text: 'Developed at '.
							html anchor
								url: 'http://www.lifia.info.unlp.edu.ar/lifia/en/';
								with: 'LIFIA'.
							html text: ' - Universidad Nacional de La Plata, Argentina' ].
					html paragraph
						class: 'muted credit';
						with: [ html text: 'Powered by '.
							html anchor
								target: '_blank';
								url: 'http://pharo.org';
								with: 'Pharo'.
							html text: ' and '.
							html anchor
								target: '_blank';
								url: 'http://www.seaside.st';
								with: 'Seaside' ].
					html
						paragraph: [ html anchor
								target: '_blank';
								url: 'https://github.com/juliangrigera/Kobold';
								with: 'GitHub' ] ] ]