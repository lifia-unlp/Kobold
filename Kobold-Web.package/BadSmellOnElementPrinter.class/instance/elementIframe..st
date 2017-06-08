rendering
elementIframe: html
	| box |
	box := self elementBox.
	(html
		tbsPanel: [ 
			html
				tbsPanelHeading: [ 
					html paragraph
						with: [ 
							html tbsGlyphIcon iconScreenshot.
							html
								space;
								text: 'Live view' ] ].
			html tbsPanelBody
				class: 'panel-body';
				attributeAt: 'style' put: 'max-height:400px;overflow:scroll;background-color:white';
				with: [ 
							html div
								id: 'outerdiv';
								attributeAt: 'style'
									put:
										'width:' , box width printString , 'px;height:' , box height printString , 'px;overflow:scroll;position:relative;';
								with: [ 
											html iframe
												id: 'us-live-view';
												url: self badSmell domElement url asString;
												attributeAt: 'scrolling' put: 'no';
												attributeAt: 'frameborder' put: '0';
												attributeAt: 'style'
													put:
														'position:absolute; width:1280px;height:1200px;top:-' , box top printString , 'px;left: -' , box left printString , 'px' ] ] ])
		beDefault