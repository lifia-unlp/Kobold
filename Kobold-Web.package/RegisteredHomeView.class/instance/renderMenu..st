rendering
renderMenu: html
	html unorderedList
		class: 'nav nav-tabs';
		with: [ self views
				do: [ :availableView | 
					| activeClass |
					self view class = availableView class
						ifTrue: [ activeClass := 'active' ]
						ifFalse: [ activeClass := '' ].
					html listItem
						class: activeClass;
						with: [ html anchor
								callback: [ self goTo: availableView ];
								with: [ availableView tabNameOn: html ] ] ] ]