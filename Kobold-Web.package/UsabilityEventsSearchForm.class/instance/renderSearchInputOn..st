rendering - form parts
renderSearchInputOn: html

	(html label)
		for: 'searchEvents';
		class: 'sr-only';
		with: 'Search Events'.
	(html textInput)
		tbsFormControl;
		id: 'searchEvents';
		on: #searchTerm of: self;
		onKeyUp: (html jQuery ajax
					callback: [:inputValue | self searchTerm: inputValue]
					value: html jQuery this value);
		onKeyUp: ((html jQuery: #eventsList) load
					html: [:renderer | self renderResultsOn: renderer]);
		placeholder: 'Event name or date'