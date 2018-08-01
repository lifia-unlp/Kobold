rendering
renderLiveListOn: html
	| renderBlock |
	renderBlock := [ self events reverseDo: [ :event | html listItem: [ self renderEvent: event on: html ] ] ].
	html unorderedList
		id: #liveEvents;
		class: 'list-unstyled';
		with: renderBlock.
	html
		script: ((html jQuery ajax script: [ :s | s << (html jQuery: #liveEvents) html: renderBlock ]) interval: 4 seconds)