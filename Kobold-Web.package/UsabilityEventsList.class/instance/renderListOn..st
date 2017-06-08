rendering
renderListOn: html
	| renderBlock |
	renderBlock := [ self eventsForCurrentPage do: [ :event | html listItem: [ self renderEvent: event on: html ] ] ].
	html unorderedList
		class: 'list-unstyled';
		with: renderBlock