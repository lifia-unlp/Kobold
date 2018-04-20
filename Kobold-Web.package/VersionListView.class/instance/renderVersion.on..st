rendering
renderVersion: anAppVersion on: html

	html div 
		class: 'list-group-item';
		
		with: [ 
			html span with: anAppVersion versionName.
					(anAppVersion canBeEdited) ifTrue: [ 
						 
					html anchor  
						style: 'cursor:pointer';
						class: 'pull-right';
						callback: [ self removeVersion: anAppVersion ];
						with: [ html tbsGlyphIcon iconRemove ].
					html anchor  
						style: 'cursor:pointer';
						class: 'pull-right';
						callback: [ self editVersion: anAppVersion ];
						with: [html tbsGlyphIcon iconPencil].
					]					   
			 ]
	