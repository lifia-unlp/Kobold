printing
renderDetails: html
	self badSmell path navigations
		do: [ :navigation | 
			html
				paragraph: [ 
					html span: navigation anchor xpath printString.
					html space.
					html tbsGlyphIcon iconPlay.
					html space.
					html anchor
						url: navigation url asString;
						with: navigation url asString ] ].
	^ self