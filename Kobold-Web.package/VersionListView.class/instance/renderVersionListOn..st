rendering
renderVersionListOn: html
	html
		tbsTable: [ html
				tableHead: [ html
						tableHeading: 'Version';
						tableHeading: 'Tag';
						tableHeading: 'URL';
						tableHeading: '' ].
			html
				tableBody: [ self user client versions
						do: [ :version | 
							html
								tableRow: [ html
										tableData: [ html anchor
												tbsTooltip: version description direction: #bottom;
												callback: [ self call: (RefactoringsManager version: version) ];
												with: version versionName ];
										tableData: [ html tbsBadge
												class: 'tag-badge';
												with: version tag ];
										tableData: [ html anchor
												url: version url;
												target: '_blank';
												with: [ html
														text: version url;
														space.
													html tbsGlyphIcon iconNewWindow ] ];
										tableData: [ version canBeEdited
												ifTrue: [ self renderEditButton: html version: version.
													html space.
													self renderRemoveButton: html version: version ] ] ] ] ] ]