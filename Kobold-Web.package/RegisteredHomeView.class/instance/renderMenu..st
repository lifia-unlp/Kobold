rendering
renderMenu: html
	html unorderedList
		class: 'nav nav-tabs';
		with: [ self views
				do: [ :availableView | 
					html listItem
						class: #active if: self view class = availableView class;
						with: [ html anchor
								callback: [ self view: availableView ];
								with: [ availableView renderTabNameOn: html ] ] ] ]