instance creation
domElementFrom: getParameters
	^ (DomElement
		xpath: (getParameters at: 'xpath')
		content: (getParameters at: 'elementContent')
		url: (ZnUrl fromString: (getParameters at: 'url'))
		boundingBox:
			(Rectangle
				origin: (getParameters at: 'elementLeft') asNumber @ (getParameters at: 'elementTop') asNumber
				extent:
					(getParameters at: 'elementWidth') asNumber
						@ (getParameters at: 'elementHeight') asNumber))
		parentsList: (getParameters at: 'parentsList')