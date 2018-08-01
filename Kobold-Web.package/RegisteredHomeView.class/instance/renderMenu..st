rendering
renderMenu: html
	html unorderedList  "lista ordenada"
		class: 'nav nav-tabs'; "css para el menu con tab solapas"
		with: [ self views      "lisata ordenada con las views creadas al inicializar"
				do: [ :availableView | 
					html listItem    "crea el item de la lista"
						class: #active if: self view class = availableView class; "si el item es la vista actual del self agrega un enlace a"
						with: [ html anchor
								callback: [ self view: availableView ]; "llama a la vista correspondiente al enlace"
								with: [ availableView renderTabNameOn: html ] ] ] ]