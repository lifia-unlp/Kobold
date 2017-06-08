rendering
renderFooter: html
	html div
		id: 'footer';
		with: [ html
				tbsContainer: [ html paragraph
						class: 'muted';
						class: 'credit';
						with: [ html text: 'Developed at '.
							html anchor
								url: 'http://www.lifia.info.unlp.edu.ar/lifia/en/';
								with: 'LIFIA' ].
					html paragraph
						class: 'muted';
						class: 'credit';
						with: 'Universidad Nacional de La Plata, Argentina' ] ]