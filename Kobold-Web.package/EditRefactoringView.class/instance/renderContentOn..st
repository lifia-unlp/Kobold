rendering
renderContentOn: html
	html div
		class: 'media';
		with: [ html div
				class: 'media-body';
				with: [ html heading
						level: 5;
						class: 'media-heading';
						with: [ self renderModalLink: html ].
					self renderBadSmellInfo: html.
					html
						paragraph: [ self renderLinksOn: html ] ] ]